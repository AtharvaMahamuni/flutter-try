import 'package:flutter/material.dart';
import 'package:pacing_calculator/src/app.dart';
import 'package:toastification/toastification.dart';

void main() {
  runApp(const ToastificationWrapper(child: App()));
}
