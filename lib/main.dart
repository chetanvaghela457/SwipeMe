import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:swipeme/AppRoutes/app_route.dart';
import 'package:swipeme/constant/colors.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

var navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return GetMaterialApp(
        navigatorKey: navigatorKey,
        getPages: AppRoutes.pages,
        initialRoute: AppRoutes.welcomeScreen,
        theme: ThemeData(
          textSelectionTheme: TextSelectionThemeData(cursorColor: cBackgroundPrimary),
        ));
  }
}
