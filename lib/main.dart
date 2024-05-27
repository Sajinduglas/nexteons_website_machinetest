import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:nexteon_website_machinetest/routes/my_routes.dart';
import 'package:url_strategy/url_strategy.dart';







// void main(){
//   runApp(MaterialApp(debugShowCheckedModeBanner:false ,home:EmergencyKitDesktopScreen() ,));
// }
void main() {
   setPathUrlStrategy();
  runApp(GetMaterialApp.router(
    routeInformationParser: router.routeInformationParser,
    routerDelegate: router.routerDelegate,
    routeInformationProvider: router.routeInformationProvider,
    debugShowCheckedModeBanner: false,
  ));
}