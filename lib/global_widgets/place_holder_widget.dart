// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:go_router/go_router.dart';
//
//
//
// import '../screen/frame/desktop_frame.dart';
// import '../utils/check_size.dart';
//
//
// class PlaceHolderWidget extends StatefulWidget {
//   const PlaceHolderWidget({super.key, required this.child});
//
//   final Widget child;
//
//   @override
//   State<PlaceHolderWidget> createState() => _PlaceHolderWidgetState();
// }
//
// class _PlaceHolderWidgetState extends State<PlaceHolderWidget> {
//   late MainFrameController controller;
//   final String tag = DateTime.now().toString();
//
//   @override
//   void initState() {
//     controller = Get.put(MainFrameController(), tag: tag);
//     super.initState();
//   }
//
//   @override
//   void dispose() {
//     Get.delete<MainFrameController>(
//       tag: tag,
//     );
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     return LayoutBuilder(builder: (context, constraints) {
//       return Scaffold(
//           appBar: fnCheckMobile(size.width)
//               ? MobileAppbarFrame(
//             controller: controller,
//           )
//               : null,
//           drawer: fnCheckMobile(size.width)
//               ? Drawer( width:size.width*0.4 ,backgroundColor:ColorTheme.lightBlue,
//             child: ListView.builder(
//               itemCount: controller.buttonDetails.length,
//               shrinkWrap: true,
//               itemBuilder: (context, index) => Padding(
//                 padding: const EdgeInsets.all(20.0),
//                 child: MainFrameButton(
//                     color: Colors.white,
//                     butttonName: controller.buttonDetails[index].name,
//                     onpressed: () {
//                       navigatorKey.currentContext!
//                           .goNamed(controller.buttonDetails[index].route);
//                     }),
//               ),
//             ),
//           )
//               : null,
//           body: Row(
//             children: [
//               if (fnCheckDesktop(size.width))
//                 DesktopFrame(
//                   controller: controller,
//                 ),
//               if (fnCheckTab(size.width))
//                 TabFrame(
//                   controller: controller,
//                 ),
//               Expanded(child: widget.child)
//             ],
//           ));
//     });
//     // return
//   }
// }
