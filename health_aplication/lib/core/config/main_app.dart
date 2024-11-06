import 'package:flutter/material.dart';
import '../constants/color.dart';
import '../constants/string.dart';
import '../utils/route_utils.dart';

class PlantifyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.appTitle,
      theme: ThemeData(
        primaryColor: AppColors.primaryColor,
        scaffoldBackgroundColor: AppColors.backgroundColor,
      ),
      initialRoute: RouteUtils.welcome,
      onGenerateRoute: RouteUtils.generateRoute,
    );
  }
}
