import 'dart:io' show Platform;

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

TargetPlatform get defaultTargetPlatform {
  TargetPlatform result;
  if (Platform.isIOS || Platform.isMacOS) {
    result = TargetPlatform.iOS;
  } else if (Platform.isAndroid || Platform.isLinux) {
    result = TargetPlatform.android;
  } else if (Platform.operatingSystem == 'fuchsia') {
    result = TargetPlatform.fuchsia;
  }
  assert(() {
    if (Platform.environment.containsKey('FLUTTER_TEST'))
      result = TargetPlatform.android;
    return true;
  }());
  if (result == null) {
    throw new FlutterError('Unknown platform.\n'
        '${Platform.operatingSystem} was not recognized as a target platform. '
        'Consider updating the list of TargetPlatforms to include this platform.');
  }
  return result;
}

ImageConfiguration createLocalImageConfiguration(BuildContext context,
    {Size size}) {
  return new ImageConfiguration(
      bundle: DefaultAssetBundle.of(context),
      devicePixelRatio: MediaQuery.of(context).devicePixelRatio,
      size: size,
      platform: defaultTargetPlatform);
}

class NetworkImageLoadCallback {
  Function callbackFunc;
  ImageStream _imageStream;
  ImageInfo _imageInfo;

  final ImageProvider image;

  NetworkImageLoadCallback.load(
      BuildContext context, String srcUrl, this.callbackFunc)
      : image = new NetworkImage(srcUrl) {
    final ImageStream oldImageStream = _imageStream;

    _imageStream =
        image.resolve(createLocalImageConfiguration(context, size: null));

    assert(_imageStream != null);

    if (_imageStream.key != oldImageStream?.key) {
      oldImageStream?.removeListener(_handleImageChanged);
      _imageStream.addListener(_handleImageChanged);
    }
  }
  void _handleImageChanged(ImageInfo imageInfo, bool synchronousCall) {
    _imageInfo = imageInfo;

    assert(_imageStream != null);
    _imageStream.removeListener(_handleImageChanged);

    callbackFunc(_imageInfo?.image);
  }
}
