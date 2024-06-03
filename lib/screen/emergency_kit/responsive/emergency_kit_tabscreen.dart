import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nexteon_website_machinetest/utils/color_theme.dart';

import '../../../global_widgets/button_widget.dart';
import '../../../global_widgets/text_botton_widget.dart';
import '../controller/emergency_kit_controller.dart';

class EmergencyKitTabScreen extends StatelessWidget {
  final EmergencyKitController controller;
  EmergencyKitTabScreen({super.key, required this.controller, });

  // final EmergencyKitController controller = Get.put(EmergencyKitController());

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              width: size.width,
              height: size.height * 0.08,
              decoration: BoxDecoration(color: Colors.blue.shade200),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/login_image.png",
                    height: size.height * 0.054,
                    width: size.width * 0.02,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(
                    width: size.width * 0.05,
                  ),
                  HomeTextWidget(
                    text: "Home",
                    fontSize: 8,
                  ),
                  SizedBox(
                    width: size.width * 0.02,
                  ),
                  HomeTextWidget(
                    text: "Migraine Tracker",
                    fontSize: 8,
                  ),
                  SizedBox(
                    width: size.width * 0.02,
                  ),
                  HomeTextWidget(
                    text: "Podcast",
                    fontSize: 8,
                  ),
                  SizedBox(
                    width: size.width * 0.02,
                  ),
                  HomeTextWidget(
                    text: "Emergency Kit",
                    fontSize: 8,
                    onPressed: () {},
                  ),
                  SizedBox(
                    width: size.width * 0.02,
                  ),
                  HomeTextWidget(
                    text: "Breath & Balance",
                    fontSize: 8,
                  ),
                  SizedBox(
                    width: size.width * 0.05,
                  ),
                  Image.asset(
                    "assets/images/frogimage.jpg",
                    height: size.height * 0.054,
                    width: size.width * 0.015,
                    fit: BoxFit.fill,
                  ),
                ],
              ),
            ),
            Container(
              height: size.height * 0.7,
              width: size.width * 0.7,
              padding: const EdgeInsets.all(16.0),
              color: ColorTheme.containerFillColor,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: size.width * 0.7,
                    height: size.height * 0.15,
                    padding: const EdgeInsets.all(16.0),
                    color: ColorTheme.green,
                    child: Column(
                      children: const [
                        Text(
                          "Emergency kit",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 15),
                        ),
                        Text(
                          'We know migraines at school can be a real bummer, but you\'re a superhero for handling ',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 8),
                        ),
                        Center(
                          child: Text(
                            ' them like a champ!',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 8),
                          ),
                        ),
                        Text(
                          'Your emergency kit is here to save the day and make you feel better',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 8),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          child: Obx(() {
                            if (controller.isLoading.value) {
                              return const Center(
                                  child: CircularProgressIndicator());
                            } else if (controller
                                .emergencyKitModel.value.data ==
                                null ||
                                controller.emergencyKitModel.value.data!.list!
                                    .isEmpty) {
                              return const Center(
                                  child: Text("No emergency kits available"));
                            } else {
                              return GridView.builder(
                                gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  childAspectRatio: 3,
                                  // Adjusted to make items look like ListTile
                                  crossAxisSpacing: 10,
                                  mainAxisSpacing: 10,
                                ),
                                itemCount: controller
                                    .emergencyKitModel.value.data!.list!.length,
                                itemBuilder: (context, index) {
                                  var kit = controller.emergencyKitModel.value
                                      .data!.list![index];
                                  return Container(
                                    padding: const EdgeInsets.all(3.0),
                                    color: Colors.white,
                                    child: Row(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              kit.name ?? 'No name',
                                              // Displaying the name
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 7),
                                            ),
                                            const SizedBox(height: 3.0),
                                            Text(
                                              kit.details ?? 'No details',
                                              // Displaying the details
                                              style: const TextStyle(
                                                  fontSize: 7),
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
                        SizedBox(
                          height: size.width * 0.030,
                          width: size.width * 0.2,
                          child: SaveButtonWidget(
                              fontSize: size.width * 0.010,
                              buttonText: "Add Emergency contact",
                              buttonColor: ColorTheme.lightBlue,
                              onPressed: () {}),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
