import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



class TextFieldWidget extends StatelessWidget {
  final String title;

  final TextEditingController? controller;
  final FormFieldValidator? validator;
  final TextInputType? keyBoardType;
  final List<TextInputFormatter>? inputFormatters ;
  final double fontSize;

  const TextFieldWidget({
    super.key,
    required this.title,

    this.controller,
    this.validator,
    this.keyBoardType, this.inputFormatters, required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [


          TextFormField(
              validator: validator,
              controller: controller,
              keyboardType: keyBoardType,
              inputFormatters:inputFormatters ,
              decoration: InputDecoration(
                fillColor: Color(0xFFF4F4F4),
                hintText: title,
                filled: true,
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10)),
              ))
        ],
      ),
    );
  }
}