import 'package:flutter/material.dart';
import 'package:shopping_app/route/route_constants.dart';
import 'package:shopping_app/route/router.dart';
import 'package:shopping_app/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shop',
      theme: AppTheme.lightTheme(context),
      themeMode: ThemeMode.light,
      onGenerateRoute: generateRoute,
      initialRoute: onbordingScreenRoute,
    );
  }
}
