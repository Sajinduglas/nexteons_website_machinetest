import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nexteon_website_machinetest/screen/login/controller/login_screen_controller.dart';

import '../../../global_widgets/Text_Field_widget.dart';
import '../../../global_widgets/button_widget.dart';
import '../../../utils/color_theme.dart';

class DesktopLoginScreen extends StatelessWidget {
  // final LoginScreenController controller = Get.put(LoginScreenController());

   final LoginScreenController controller;

  DesktopLoginScreen({
    super.key,  required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Center(
          child: Row(
            children: [
              Container(
                height: double.infinity,
                width: size.width * 0.5,
                decoration: BoxDecoration(
                    color: ColorTheme.lightBlue,
                    image: DecorationImage(
                        image: AssetImage("assets/images/login_image.png"))),
              ),
              SizedBox(
                width: size.width * 0.03,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 150, bottom: 125),
                child: Container(
                  height: size.width * 0.5,
                  width: size.width * 0.4,
                  // color: Colors.blue,
                  child: Form(
                     key: controller.validKey,
                    child: ListView(
                      children: [
                        Text(
                          "welcome back! Glad to",
                          style: TextStyle(
                              fontSize: size.width * 0.022,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "See you again",
                          style: TextStyle(
                              fontSize: size.width * 0.020,
                              fontWeight: FontWeight.bold),
                        ),
                        TextFieldWidget(
                          title: "username or Email",
                          fontSize: size.width * 0.015,
                           controller: controller.nameOrEmailController,
                          validator: (name) {
                            if (name!.isEmpty) {
                              return "This field is required";
                            } else if (name.length < 6 || !name.contains('@')) {
                              return "Enter a valid Email or name";
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        TextFieldWidget(
                            title: "Password",
                            fontSize: size.width * 0.015,
                             controller: controller.passwordController,
                            validator: (password) {
                              if (password == null || password.isEmpty) {
                                return "This field is required";
                              } else if (password.length < 3) {
                                return "Password must be at least 6 characters long";
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
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: SizedBox(
                            height: size.width * 0.040,
                            width: size.width * 0.4,
                            child: SaveButtonWidget(
                                fontSize: size.width * 0.015,
                                buttonText: "Login",
                                buttonColor: ColorTheme.lightBlue,
                                onPressed:
                                controller.login

                                ),
                          ),
                        ),SizedBox(
                          height: size.height*0.15,
                        ),

                        Center(
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Not Registered yet? ',
                                  style: TextStyle(color: Colors.black, fontSize: 14),
                                ),
                                TextSpan(
                                  text: 'Sign up now',
                                  style: TextStyle(color: ColorTheme.lightBlue, fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                        )

                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
