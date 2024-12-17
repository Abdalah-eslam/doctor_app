import 'package:doc_app/core/theme/colors_manger.dart';
import 'package:doc_app/core/theme/style.dart';
import 'package:flutter/material.dart';

class CommonTextFormFeild extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final Widget? suffixIcon;
  const CommonTextFormFeild(
      {super.key,
      required this.hintText,
      required this.controller,
      this.keyboardType,
      this.obscureText,
      this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {},
      obscureText: obscureText ?? false,
      keyboardAppearance: Brightness.light,
      keyboardType: keyboardType,
      controller: controller,
      textAlign: TextAlign.justify,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        fillColor: Color(0xFFDFDFF),
        filled: true,
        isDense: true,
        contentPadding: EdgeInsets.symmetric(vertical: 22, horizontal: 10),
        hintText: hintText,
        hintStyle: Stylemanger.font14gray400wi,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: ColorsManger.maingray, width: 2),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: ColorsManger.mainblue, width: 2),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: ColorsManger.maingray, width: 2),
        ),
      ),
    );
  }
}
