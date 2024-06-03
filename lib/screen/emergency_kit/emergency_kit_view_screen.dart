import 'package:flutter/material.dart';
import 'package:nexteon_website_machinetest/screen/emergency_kit/responsive/emergency_kit_desktop_screen.dart';
import 'package:nexteon_website_machinetest/screen/emergency_kit/responsive/emergency_kit_mobile_screen.dart';
import 'package:nexteon_website_machinetest/screen/emergency_kit/responsive/emergency_kit_tabscreen.dart';
import 'package:nexteon_website_machinetest/screen/login/responsive/desktop_screen.dart';
import 'package:nexteon_website_machinetest/screen/login/responsive/mobile_screen.dart';
import 'package:nexteon_website_machinetest/screen/login/responsive/tab_screen.dart';

import '../../global_widgets/responsive_builder.dart';

import 'package:get/get.dart';

import 'controller/emergency_kit_controller.dart';

class EmergencyKitViewScreen extends StatefulWidget {
  EmergencyKitViewScreen({super.key});

  @override
  State<EmergencyKitViewScreen> createState() => _EmergencyKitViewScreenState();
}

class _EmergencyKitViewScreenState extends State<EmergencyKitViewScreen> {
  late EmergencyKitController controller;
  final String tag= DateTime.now().toString();
  @override
  void initState() {
    controller= Get.put(EmergencyKitController(),tag: tag);
    super.initState();
  }
  @override
  void dispose() {
    Get.delete<EmergencyKitController>(tag: tag);
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(desktopScreen: EmergencyKitDesktopScreen(controller: controller,),
        tabScreen: EmergencyKitTabScreen(controller: controller,),
        mobileScreen: EmergencyKitMobileScreen(controller: controller,));
  }
}
