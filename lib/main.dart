import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:test_rx/di/injection.dart';
import 'package:test_rx/presentation/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.dev);
  runApp(MyApp());
}
