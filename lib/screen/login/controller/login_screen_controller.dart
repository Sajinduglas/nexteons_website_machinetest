
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../utils/app_config.dart';
import '../../../utils/navigaror_key_constants.dart';
import '../../../utils/routes_name.dart';
import '../../emergency_kit/responsive/emergency_kit_desktop_screen.dart';

class LoginScreenController extends GetxController {
  final nameOrEmailController = TextEditingController();
  final passwordController = TextEditingController();
  final validKey = GlobalKey<FormState>();
  late SharedPreferences preferences;

  final Dio dio = Dio();

  Future<void> login() async {
    if (validKey.currentState!.validate()) {
      final loginData = {
        "email": nameOrEmailController.text,
        "password": passwordController.text,
      };

      try {
        final response = await dio.post(
          'https://migrainetracker.api.salonsyncs.com/api/user/login', // replace with your endpoint
          data: loginData,
        );

        print("statuscode ${response.statusCode}");
        if (response.statusCode == 201) {
          print("I");
          print(response.statusCode);
          print(response.data);
          var id = response.data["data"]["_id"];
          // Handle the response as needed
           preferences = await SharedPreferences.getInstance();
          preferences.setString(AppConfig.accessToken, id);
          // preferences.setBool('isLoggedIn', true);

          navigatorKey.currentContext!.goNamed(RoutesName.emergencykit);

          // Navigate to another screen if needed
          // navigatorKey.currentContext!.goNamed(RoutesName.studentList);
        } else {
          ScaffoldMessenger.of(navigatorKey.currentContext!)
              .showSnackBar(SnackBar(
            content: Text('Login failed!'),
          ));
        }
      } catch (e) {
        ScaffoldMessenger.of(navigatorKey.currentContext!)
            .showSnackBar(SnackBar(
          content: Text('Error: $e'),
        ));
      }
    } else {
      ScaffoldMessenger.of(navigatorKey.currentContext!)
          .showSnackBar(SnackBar(
        content: Text('Validation failed!'),
      ));
    }
  }
}

