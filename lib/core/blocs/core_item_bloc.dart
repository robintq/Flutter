import 'package:marvel/core/blocs/core_bloc.dart';
import 'package:rxdart/rxdart.dart';

class CoreItemBloc<T> implements CoreBloc {
  final _coreItemModelSubject = BehaviorSubject<T>(seedValue: null);
  T _coreItemModel = null;

  Function(T) get coreItemModelAdd => _coreItemModelSubject.sink.add;

  CoreItemBloc() {
    _coreItemModelSubject.stream.listen(_handleCoreItemModel);
  }

  get coreItemModel => _coreItemModel;

  /// Take care of closing streams.
  void dispose() {
    _coreItemModelSubject.sink.close();
  }

  void _handleCoreItemModel(T coreItemModel) => _coreItemModel = coreItemModel;
}
