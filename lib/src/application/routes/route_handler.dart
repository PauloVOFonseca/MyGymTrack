import 'package:flutter/material.dart';

abstract class RouteHandler {
  void configure(BuildContext context);
  void pushNamed(String routeName, {dynamic extra});
  void pushNamedAndRemoveAll(String routeName, {dynamic extra});
  String getRouteName();
  void pop();
}
