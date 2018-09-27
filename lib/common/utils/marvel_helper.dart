import 'package:flutter/material.dart';
import 'package:flutter_image/network.dart';
import 'package:marvel/common/models/marvel_model.dart';

import 'package:marvel/common/utils/converter.dart';
import 'package:marvel/common/utils/security.dart';
import 'package:marvel/src/const.dart';

class MarvelHelper {
  static String getApiUrl(Screen screen, String screenUri) {
    final String area = getArea(screen);
    final String hash = Security.generateMd5('$timeStamp$privateKey$apiKey');

    String url = screenUri == '' ? '$marvel_dev_api_url$area' : screenUri;
    url += '?ts=$timeStamp&apikey=$apiKey&hash=$hash';

    return url;
  }

  static String getImageUrl(String path, String extension,
      {ImageVariant imageSize = ImageVariant.standard_medium}) {
    String imageUrl = '';
    // if (path.contains('image_not_available'))
    //   imageUrl = '$path.$extension';
    // else
    imageUrl =
        '$path/${EnumConvert.getEnumValue(imageSize.toString())}.$extension';

    if (imageSize == ImageVariant.full) {
      imageUrl = '$path.$extension';
    }

    //print(imageUrl);
    return imageUrl;
  }

  static Widget getImage(String path, String extension,
      {ImageVariant imageSize = ImageVariant.standard_medium}) {
    //const imageNotAvailable = 'image_not_available';

    Widget imageWidget;

    String imageUrl = getImageUrl(path, extension, imageSize: imageSize);

    // if (path.contains(imageNotAvailable)) {
    // } else {
    // }

    imageWidget = Image(
      image: NetworkImageWithRetry(imageUrl),
    );

    //print(imageUrl);
    return imageWidget;
  }

  static String getArea(Screen screen) {
    return EnumConvert.getEnumValue(screen.toString()).toLowerCase();
  }
}
