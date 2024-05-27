import 'package:flutter/material.dart';
import 'package:nexteon_website_machinetest/screen/login/responsive/desktop_screen.dart';
import 'package:nexteon_website_machinetest/screen/login/responsive/mobile_screen.dart';
import 'package:nexteon_website_machinetest/screen/login/responsive/tab_screen.dart';

import '../../global_widgets/responsive_builder.dart';
import 'controller/login_screen_controller.dart';
import 'package:get/get.dart';

class LoginView extends StatefulWidget {
  LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late LoginScreenController controller;
  final String tag= DateTime.now().toString();
  @override
  void initState() {
    controller= Get.put(LoginScreenController(),tag: tag);
    super.initState();
  }
  @override
  void dispose() {
    Get.delete<LoginScreenController>(tag: tag);
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(desktopScreen: DesktopLoginScreen(controller: controller,),
        tabScreen: TabLoginScreen(controller: controller,),
        mobileScreen: MobileLoginScreen(controller: controller,));
  }
}
