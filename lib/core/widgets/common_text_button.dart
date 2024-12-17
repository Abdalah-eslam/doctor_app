import 'package:doc_app/core/theme/colors_manger.dart';
import 'package:doc_app/core/theme/style.dart';
import 'package:flutter/material.dart';

class CommonTextButton extends StatelessWidget {
  final String text;
  final VoidCallback onpress;
  const CommonTextButton(
      {super.key, required this.text, required this.onpress});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
          shape: WidgetStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(22))),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          backgroundColor: WidgetStateProperty.all(
            ColorsManger.mainblue,
          ),
          minimumSize: WidgetStateProperty.all(Size(double.infinity, 60))),
      onPressed: onpress,
      child: Text(
        text,
        style:
            Stylemanger.font16white600wi.copyWith(fontWeight: FontWeight.w500),
      ),
    );
  }
}
