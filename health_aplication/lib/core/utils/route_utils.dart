import 'package:flutter/material.dart';
import '../../features/onboarding/screen/WelcomeScreen.dart';
import '../../features/plant_list/screen/PlantListScreen.dart';
import '../../features/plant_detail/screen/PlantDetailScreen.dart';
import '../../data/plants/modelresponses/PlantResponse.dart';

class RouteUtils {
  static const String welcome = '/';
  static const String plantList = '/plantList';
  static const String plantDetail = '/plantDetail';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case welcome:
        return MaterialPageRoute(builder: (_) => WelcomeScreen());
      case plantList:
        return MaterialPageRoute(builder: (_) => PlantListScreen());
      case plantDetail:
        if (settings.arguments is PlantResponse) {
          final plant = settings.arguments as PlantResponse;
          return MaterialPageRoute(builder: (_) => PlantDetailScreen(plant: plant));
        }
        return _errorRoute();
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        body: Center(
          child: Text('Error: Route not found!'),
        ),
      ),
    );
  }
}
