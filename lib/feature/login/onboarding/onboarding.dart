import 'package:doc_app/feature/login/onboarding/doctor_image_andText.dart';
import 'package:doc_app/feature/login/onboarding/logo_and_name.dart';
import 'package:doc_app/feature/login/onboarding/text_and_getstartedbut.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 30, bottom: 30),
          child: Column(
            spacing: 30.h,
            children: [
              LogoAndName(),
              DoctorImageAndtext(),
              TextAndGetstartedbut()
            ],
          ),
        ),
      )),
    );
  }
}
