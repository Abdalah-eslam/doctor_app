import 'package:doc_app/core/widgets/common_text_button.dart';
import 'package:doc_app/core/widgets/common_text_form_feild.dart';
import 'package:doc_app/feature/Sign_up/Logic/cubit/cubit/signup_cubit.dart';
import 'package:doc_app/feature/Sign_up/Ui/SIgn_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helper/regX_app.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SignupCubit>().formKey,
      child: Column(
        spacing: 15.h,
        children: [
          CommonTextFormFeild(
              hintText: 'Name',
              controller: context.read<SignupCubit>().name,
              validation: (value) {
                if (value!.isEmpty) {
                  return 'Name is required';
                }
              }),
          CommonTextFormFeild(
              hintText: 'Phone Number',
              controller: context.read<SignupCubit>().phoneNumber,
              validation: (value) {
                if (value!.isEmpty) {
                  return 'Phone Number is required';
                }
              }),
          CommonTextFormFeild(
              hintText: "Email",
              controller: context.read<SignupCubit>().email,
              validation: (value) {
                if (value!.isEmpty || !AppRegex.isEmailValid(value)) {
                  return 'Invalid Email';
                }
              }),
          CommonTextFormFeild(
              obscureText: true,
              hintText: 'Password',
              controller: context.read<SignupCubit>().password,
              validation: (value) {
                if (value!.isEmpty || value.length < 6) {
                  return 'Password is required';
                }
              }),
          CommonTextFormFeild(
              obscureText: true,
              hintText: 'Password Confirmation',
              controller: context.read<SignupCubit>().passwordConfirmation,
              validation: (value) {
                if (value!.isEmpty ||
                    value != context.read<SignupCubit>().password.text) {
                  return 'Password does not match';
                }
              }),

          // ignore: deprecated_member_use
          CommonTextButton(
              text: "Resgister",
              onpress: () {
                if (context
                    .read<SignupCubit>()
                    .formKey
                    .currentState!
                    .validate()) {
                  context.read<SignupCubit>().signup();
                }
                ;
              }),
        ],
      ),
    );
  }
}
