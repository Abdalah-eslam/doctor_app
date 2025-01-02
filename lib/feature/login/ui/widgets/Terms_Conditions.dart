import 'package:doc_app/core/theme/style.dart';
import 'package:flutter/material.dart';

class Termsandcond extends StatelessWidget {
  const Termsandcond({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(children: [
        TextSpan(
            text: 'By logging, you agree to our ',
            style: Stylemanger.font12black400wi),
        TextSpan(
            text: ' Terms & Conditions',
            style: Stylemanger.font32blue700wi.copyWith(fontSize: 14)),
        TextSpan(text: ' and', style: Stylemanger.font12black400wi),
        TextSpan(
            text: ' PrivacyPolicy.',
            style: Stylemanger.font32blue700wi.copyWith(fontSize: 14)),
      ]),
    );
  }
}
