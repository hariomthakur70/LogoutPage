
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyTextFormField extends StatelessWidget {
  String? Function(String? val) validator;

  final String lableText;

  final TextEditingController controller;
  bool obscureText = true;
  final TextInputType KeyboardType;

  MyTextFormField(
      {required this.lableText,
      required this.obscureText,
      required this.controller,
      required this.KeyboardType,
      required this.validator});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        autovalidateMode: AutovalidateMode.always,
        validator: validator!,
        keyboardType: KeyboardType,
        style: const TextStyle(color: Colors.white),
        controller: controller,
        decoration: InputDecoration(
            enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white)),
            // fillColor: Colors.white ,
            filled: true,
            labelStyle: const TextStyle(
              color: Colors.white,
            ),
            labelText: lableText,
            hintStyle: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 15)

            //icon: IconData
            ),
      ),
    );
  }
}
