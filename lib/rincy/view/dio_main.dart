
import 'package:flutter/cupertino.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:nexteon_website_machinetest/rincy/view/home.dart';
// import 'package:practice_section/rincy/view/home.dart';

void main() {
  runApp(ApiDio());
}

class ApiDio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(home: PostHome(),
      debugShowCheckedModeBanner: false,);
  }
}