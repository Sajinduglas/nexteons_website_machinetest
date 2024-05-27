import 'package:flutter/material.dart';
import 'package:nexteon_website_machinetest/screen/login/controller/login_screen_controller.dart';

import '../../../global_widgets/Text_Field_widget.dart';
import '../../../global_widgets/button_widget.dart';

import '../../../utils/color_theme.dart';

class MobileLoginScreen extends StatelessWidget {
  // final LoginScreenController controller = Get.put(LoginScreenController());
   final LoginScreenController controller;
  MobileLoginScreen({
    super.key,  required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Form(
           // key: controller.validKey,
          child: Padding(
            padding:
                const EdgeInsets.only(top: 30, left: 30, right: 30, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(alignment: Alignment.topLeft,
                  child: Container(
                    height: size.height * 0.2,
                    width: size.width * 0.25,

                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/images/login_image.png"))),
                  ),
                ),
                Text(
                  "welcome back! Glad to",
                  style: TextStyle(
                      fontSize: size.width * 0.050,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "see you again",
                  style: TextStyle(
                      fontSize: size.width * 0.030,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: size.height * 0.020,
                ),
                TextFieldWidget(
                  title: "username or Email",
                  fontSize: size.width * 0.030,
                  controller: controller.nameOrEmailController,
                  validator: (name) {
                    if (name!.isEmpty) {
                      return "This field is required";
                    } else if (name.length < 6 || !name.contains('@')) {
                      return "Enter a valid Email ";
                    }
                    return null;
                  },
                ),
                SizedBox(height: size.height*0.025,),
                TextFieldWidget(
                    title: "Password",
                    fontSize: size.width * 0.030,
                     controller: controller.passwordController,
                    validator: (password) {
                      if (password == null || password.isEmpty) {
                        return "This field is required";
                      } else if (password.length < 3) {
                        return "Password must be at least 3 characters long";
                      }
                      return null;
                    }),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: ListTile(
                    trailing: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forget password",
                      ),
                    ),
                  ),
                ),
                Center(
                  child: SizedBox(
                    height: size.height * 0.050,
                    width: size.width * 0.8,
                    child: SaveButtonWidget(
                      fontSize: size.width * 0.030,
                      buttonText: "Login",
                      buttonColor: ColorTheme.lightBlue,
                      onPressed:
                       controller.login
                      ,
                    ),
                  ),
                ),
                SizedBox(height: size.height*0.3,),
                Center(
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Not Registered yet? ',
                          style: TextStyle(color: Colors.black, fontSize: 10),
                        ),
                        TextSpan(
                          text: 'Sign up now',
                          style: TextStyle(color: ColorTheme.lightBlue, fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
