import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:test_rx/presentation/app_theme.dart';
import 'package:test_rx/presentation/routes/router.gr.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Flutter Demo',
        builder: ExtendedNavigator<Router>(router: Router()),
        theme: AppTheme.appTheme,
      );
}
