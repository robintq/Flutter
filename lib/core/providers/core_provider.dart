import 'package:flutter/material.dart';
import 'package:marvel/core/blocs/core_bloc.dart';

class CoreProvider<T extends CoreBloc> extends StatefulWidget {
  CoreProvider({
    Key key,
    @required this.child,
    @required this.bloc,
  }) : super(key: key);

  final T bloc;
  final Widget child;

  @override
  _CoreProviderState<T> createState() => _CoreProviderState<T>();

  static Type _typeOf<T>() => T;

  static T of<T extends CoreBloc>(BuildContext context) {
    final type = _typeOf<_CoreProvider<T>>();
    _CoreProvider<T> provider =
        context.ancestorInheritedElementForWidgetOfExactType(type)?.widget;
    return provider?.bloc;
  }

  // static T of<T extends CoreBloc>([BuildContext context, bool rebuild = true]) {
  //   return rebuild
  //       ? (context.inheritFromWidgetOfExactType(_CoreProvider) as _CoreProvider)
  //           .bloc
  //       : (context.ancestorWidgetOfExactType(_CoreProvider) as _CoreProvider)
  //           .bloc;
  // }
}

class _CoreProviderState<T> extends State<CoreProvider<CoreBloc>> {
  @override
  void dispose() {
    print('CoreProvider: dispose()');
    widget.bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // return widget.child;

    return _CoreProvider(
      bloc: widget.bloc,
      child: widget.child,
    );
  }
}

class _CoreProvider<T> extends InheritedWidget {
  final T bloc;

  _CoreProvider({
    Key key,
    @required this.bloc,
    @required Widget child,
  }) : super(key: key, child: child);

  @override
  bool updateShouldNotify(_CoreProvider old) => bloc != old.bloc;
}
