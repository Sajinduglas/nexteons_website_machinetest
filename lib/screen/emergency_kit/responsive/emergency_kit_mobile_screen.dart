import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:nexteon_website_machinetest/utils/color_theme.dart';
import '../controller/emergency_kit_controller.dart';

class EmergencyKitMobileScreen extends StatelessWidget {
  final EmergencyKitController controller;

  EmergencyKitMobileScreen({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(30),
                bottomLeft: Radius.circular(30),
              ),
              child: Container(
                width: size.width,
                height: size.height * 0.35,
                decoration: BoxDecoration(color: ColorTheme.lightBlue),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            "assets/images/login_image.png",
                            height: size.height * 0.1,
                            width: size.width * 0.1,
                            fit: BoxFit.fill,
                          ),
                          Image.asset(
                            "assets/images/frogimage.jpg",
                            height: size.height * 0.1,
                            width: size.width * 0.1,
                            fit: BoxFit.fill,
                          ),
                        ],
                      ),
                      Text(
                        "Emergency kit",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        'We know migraines at school can be a real bummer, but you\'re a superhero for handling ',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        ' them like a champ!',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        'Your emergency kit is here to save the day and make you feel better',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Obx(() {
                if (controller.isLoading.value) {
                  return const Center(child: CircularProgressIndicator());
                } else if (controller.emergencyKitModel.value.data == null ||
                    controller.emergencyKitModel.value.data!.list!.isEmpty) {
                  return const Center(
                      child: Text("No emergency kits available"));
                } else {
                  return ListView.builder(
                    itemCount:
                        controller.emergencyKitModel.value.data!.list!.length,
                    itemBuilder: (context, index) {
                      var kit =
                          controller.emergencyKitModel.value.data!.list![index];
                      return Container(
                        padding: const EdgeInsets.all(12.0),
                        color: Colors.grey,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  kit.name ?? 'No name',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                  ),
                                ),
                                const SizedBox(height: 4.0),
                                Text(
                                  kit.details ?? 'No details',
                                  style: const TextStyle(fontSize: 14),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  );
                }
              }),
            ),
          ],
        ),
      ),
    );
  }
}
