import 'package:bloc_test/app.dart';
import 'package:bloc_test/init_depenencies.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initDependencies();

  runApp(
    App(),
  );
}
