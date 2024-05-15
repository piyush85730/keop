import 'package:flutter/material.dart';
import 'package:keop/entry.dart';
import 'package:keop/injection_container/injection_container.dart';

Future<void> main() async {
  await init();
  runApp(const Entry());
}

