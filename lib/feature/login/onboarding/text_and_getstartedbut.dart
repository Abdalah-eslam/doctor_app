import 'package:doc_app/core/helper/extentions.dart';
import 'package:doc_app/core/routing/routes.dart';
import 'package:doc_app/core/theme/colors_manger.dart';
import 'package:doc_app/core/theme/style.dart';
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
          TextButton(
            style: ButtonStyle(
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                backgroundColor: WidgetStateProperty.all(
                  ColorsManger.mainblue,
                ),
                minimumSize:
                    WidgetStateProperty.all(Size(double.infinity, 52))),
            onPressed: () {
              context.pushnamed(Routes.login);
            },
            child: Text(
              'Get Started',
              style: Stylemanger.font16white600wi,
            ),
          ),
        ],
      ),
    );
  }
}
