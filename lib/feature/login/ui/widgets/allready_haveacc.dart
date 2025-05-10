import 'package:doc_app/core/theme/style.dart';
import 'package:flutter/material.dart';

class AllreadyHaveacc extends StatelessWidget {
  final String blackText;
  final String blueText;
  const AllreadyHaveacc(
      {super.key, required this.blackText, required this.blueText});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(children: [
        TextSpan(text: blackText, style: Stylemanger.font12black400wi),
        TextSpan(text: blueText, style: Stylemanger.font14blue300wi),
      ]),
    );
  }
}
