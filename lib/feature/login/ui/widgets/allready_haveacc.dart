import 'package:doc_app/core/theme/style.dart';
import 'package:flutter/material.dart';

class AllreadyHaveacc extends StatelessWidget {
  const AllreadyHaveacc({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(children: [
        TextSpan(
            text: 'Already have an account yet?',
            style: Stylemanger.font12black400wi),
        TextSpan(text: ' Sign Up', style: Stylemanger.font14blue300wi),
      ]),
    );
  }
}
