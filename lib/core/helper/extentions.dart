import 'package:flutter/material.dart';

extension navigation on BuildContext {
  Future<dynamic> pushnamed(String routeName, {Object? argument}) {
    return Navigator.of(this).pushNamed(routeName, arguments: argument);
  }

  Future<dynamic> pushReplasenamed(String routeName, {Object? argument}) {
    return Navigator.of(this)
        .pushReplacementNamed(routeName, arguments: argument);
  }

  Future<dynamic> pushNamedAndRemoveUntil(String routeName,
      {Object? argument, required RoutePredicate predicate}) {
    return Navigator.of(this)
        .pushNamedAndRemoveUntil(routeName, predicate, arguments: argument);
  }

  void pop() => Navigator.of(this).pop;
}
