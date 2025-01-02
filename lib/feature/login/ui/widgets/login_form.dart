import 'package:doc_app/core/widgets/common_text_button.dart';
import 'package:doc_app/feature/login/logic/cubit/login_cubit.dart';
import 'package:doc_app/feature/login/ui/widgets/email_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/Requst_Login_model.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: Column(
        spacing: 15,
        children: [
          EmailPassword(),
          CommonTextButton(
            text: 'Login',
            onpress: () {
              validateThenLogin(context);
            },
          )
        ],
      ),
    );
  }

  void validateThenLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().login();
    }
  }
}
