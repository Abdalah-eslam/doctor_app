import 'package:doc_app/core/theme/colors_manger.dart';
import 'package:doc_app/core/theme/style.dart';
import 'package:doc_app/feature/login/ui/widgets/login_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TotalyLoginView extends StatelessWidget {
  const TotalyLoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 35.h),
      child: SingleChildScrollView(
        child: Column(
          spacing: 15.h,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Welcome Back',
                style: Stylemanger.font24black700wi
                    .copyWith(color: ColorsManger.mainblue),
              ),
            ),
            Text(
              'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
              style: Stylemanger.font14gray400wi.copyWith(height: 1.4),
            ),
            const LoginForm(),
          ],
        ),
      ),
    );
  }
}
