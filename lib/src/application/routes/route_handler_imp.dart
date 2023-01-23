import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_gym_track/src/application/routes/route_handler.dart';

class RouteHandlerImp implements RouteHandler {
  late GoRouter _goRouter;

  @override
  void configure(BuildContext context) {
    _goRouter = GoRouter.of(context);
  }

  @override
  void pushNamed(String routeName, {dynamic extra}) {
    _goRouter.push(routeName, extra: extra);
  }

  @override
  void pushNamedAndRemoveAll(String routeName, {dynamic extra}) {
    _goRouter.go(routeName, extra: extra);
  }

  @override
  String getRouteName() {
    return _goRouter.location;
  }

  @override
  void pop() {
    _goRouter.pop();
  }
}
