import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tutapp/presintation/constant/routes/routes_manager.dart';
import 'package:tutapp/presintation/constant/theme_manager.dart';

class MyApp extends StatelessWidget {
MyApp._intenal();
static final MyApp instance=MyApp._intenal();
factory MyApp()=>instance;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.splashRoute,
      theme: getApplicationTheme(),
    );
  }
}
