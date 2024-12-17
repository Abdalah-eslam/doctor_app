import 'package:doc_app/core/helper/extentions.dart';
import 'package:doc_app/core/routing/routes.dart';

import 'package:doc_app/core/theme/style.dart';
import 'package:doc_app/core/widgets/common_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextAndGetstartedbut extends StatelessWidget {
  const TextAndGetstartedbut({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        spacing: 30.h,
        children: [
          Text(
            'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
            style: Stylemanger.font12gray400wi,
          ),
          CommonTextButton(
            text: 'Get Started',
            onpress: () => context.pushnamed(Routes.login),
          )
        ],
      ),
    );
  }
}
