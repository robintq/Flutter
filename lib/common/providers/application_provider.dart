import 'package:flutter/material.dart';
import 'package:marvel/core/blocs/core_bloc.dart';
import 'package:marvel/core/providers/core_provider.dart';

class ApplicationProvider<T extends CoreBloc> extends CoreProvider {
  ApplicationProvider({
    @required this.bloc,
    @required this.child,
  }) : super(
          bloc: bloc,
          child: child,
        );
  final T bloc;
  final Widget child;

  static T of<T extends CoreBloc>(BuildContext context) =>
      CoreProvider.of<T>(context);
}
