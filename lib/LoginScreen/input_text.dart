import 'package:flutter/material.dart';

class InputTextWidget extends StatelessWidget {
  final TextEditingController controller;
  final bool isObscure;

  InputTextWidget({required this.controller, required TextEditingController textEditingController, required this.isObscure});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: "Masukkan Username",
        focusColor: Colors.black,
        fillColor: Colors.black12,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      obscureText: isObscure,
    );
  }
}