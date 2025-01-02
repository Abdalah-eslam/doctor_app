import 'package:doc_app/core/helper/extentions.dart';
import 'package:doc_app/core/theme/style.dart';
import 'package:doc_app/feature/Sign_up/Ui/widgets/signUp_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theme/colors_manger.dart';
import '../../../login/ui/widgets/Terms_Conditions.dart';
import '../../../login/ui/widgets/allready_haveacc.dart';

class Signupview extends StatelessWidget {
  const Signupview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 40.h),
      child: Column(
        spacing: 15.h,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Create Account',
              style: Stylemanger.font24black700wi
                  .copyWith(color: ColorsManger.mainblue),
            ),
          ),
          Text(
            'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
            style: Stylemanger.font14gray400wi.copyWith(height: 1.4),
          ),
          const SignupForm(),
          GestureDetector(
            onTap: () => context.pushnamed(Routes.login),
            child: AllreadyHaveacc(
              blackText: 'Already have an account? ',
              blueText: 'Sign in',
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Termsandcond(),
        ],
      ),
    );
  }
}
