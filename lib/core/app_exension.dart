import 'package:flutter/material.dart';

extension Route on BuildContext {
  void push(String routeName) {
    Navigator.of(this).pushNamed(routeName);
  }

  void pushReplacement(String routeName) {
    Navigator.of(this).pushReplacementNamed(routeName);
  }

  void pop() {
    Navigator.of(this).pop();
  }
}
