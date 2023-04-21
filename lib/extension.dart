import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  Future<dynamic> navigateAndPush(Widget widget) {
    return Navigator.push(
      this,
      MaterialPageRoute(builder: (context) => widget),
    );
  }

  Future<dynamic> navigateAndPushName(String path) {
    return Navigator.pushNamed(
      this,
      path,
    );
  }

  Future<dynamic> navigateAndPushReplacement(Widget widget) {
    return Navigator.pushReplacement(
      this,
      MaterialPageRoute(builder: (context) => widget),
    );
  }

  Future<dynamic> navigateAndRemoveUntil(Widget widget) {
    return Navigator.pushAndRemoveUntil(
      this,
      MaterialPageRoute(builder: (context) => widget),
      (Route<dynamic> route) => false,
    );
  }

  Size get mediaQuerySize => MediaQuery.of(this).size;

  void showSnackBar(String? message, {bool isError = false}) =>
      ScaffoldMessenger.of(this)
        ..removeCurrentSnackBar()
        ..showSnackBar(
          SnackBar(
            content: Text(message ?? ''),
          ),
        );
}
