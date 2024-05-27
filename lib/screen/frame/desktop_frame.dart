import 'package:flutter/material.dart';

import '../../global_widgets/text_botton_widget.dart';

class DesktopFrame extends StatelessWidget {
  const DesktopFrame({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * 0.12,
      decoration: BoxDecoration(color: Colors.blue.shade200),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/login_image.png",
            height: size.height * 0.078,
            width: size.width * 0.05,
            fit: BoxFit.fill,
          ),
          SizedBox(
            width: size.width * 0.15,
          ),
          HomeTextWidget(
            text: "Home", fontSize: 13,
          ),
          SizedBox(
            width: size.width * 0.03,
          ),
          HomeTextWidget(
            text: "Migraine Tracker", fontSize: 13,
          ),
          SizedBox(
            width: size.width * 0.03,
          ),
          HomeTextWidget(
            text: "Podcast", fontSize: 13,
          ),
          SizedBox(
            width: size.width * 0.03,
          ),
          HomeTextWidget(
            text: "Emergency Kit", fontSize: 13,onPressed: (){},
          ),
          SizedBox(
            width: size.width * 0.03,
          ),
          HomeTextWidget(
            text: "Breath & Balance", fontSize: 13,
          ),
          SizedBox(
            width: size.width * 0.16,
          ),
          Image.asset(
            "assets/images/frogimage.jpg",
            height: size.height * 0.078,
            width: size.width * 0.05,
            fit: BoxFit.fill,
          ),
        ],
      ),
    );
  }
}
