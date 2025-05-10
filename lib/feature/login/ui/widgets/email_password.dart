import 'package:doc_app/feature/login/logic/cubit/login_cubit.dart';
import 'package:doc_app/feature/login/ui/widgets/password_validations.dart';
import 'package:doc_app/feature/login/ui/widgets/remember_me.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helper/regX_app.dart';
import '../../../../core/widgets/common_text_form_feild.dart';

class EmailPassword extends StatefulWidget {
  const EmailPassword({super.key});

  @override
  State<EmailPassword> createState() => _EmailPasswordState();
}

class _EmailPasswordState extends State<EmailPassword> {
  bool isscure = true;
  bool hasUppercase = false;
  bool hasLowercase = false;
  bool hasNumber = false;
  bool hasSpecialCharacters = false;
  bool hasMinLength = false;
  late TextEditingController passwordController;

  initState() {
    passwordController = context.read<LoginCubit>().password;
    passwordController.addListener(() {
      setState(() {
        hasUppercase = AppRegex.hasUpperCase(passwordController.text);
        hasLowercase = AppRegex.hasLowerCase(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasSpecialCharacters =
            AppRegex.hasSpecialCharacter(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        spacing: 16,
        children: [
          CommonTextFormFeild(
            controller: context.read<LoginCubit>().email,
            hintText: 'Email',
            keyboardType: TextInputType.emailAddress,
            validation: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return 'Please enter email';
              }
              ;
            },
          ),
          CommonTextFormFeild(
            validation: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter password';
              }
              ;
            },
            controller: context.read<LoginCubit>().password,
            hintText: 'Password',
            obscureText: isscure,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isscure = !isscure;
                });
              },
              child: Icon(
                isscure ? Icons.visibility_off : Icons.visibility,
              ),
            ),
          ),
          RememberMe(),
          PasswordValidations(
            hasUppercase: hasUppercase,
            hasLowercase: hasLowercase,
            hasNumber: hasNumber,
            hasSpecialCharacters: hasSpecialCharacters,
            hasMinLength: hasMinLength,
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }
}
