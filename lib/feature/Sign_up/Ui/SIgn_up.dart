import 'package:doc_app/feature/Sign_up/Logic/cubit/cubit/signup_cubit.dart';
import 'package:doc_app/feature/Sign_up/Logic/cubit/cubit/signup_state.dart';
import 'package:doc_app/feature/Sign_up/Ui/widgets/sign_up_View.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocListener<SignupCubit, SignupState>(
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              builder: (context) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            );
          },
          success: (data) {
            Navigator.pop(context);
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: const Text('Success'),
                  content: Text(data),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('OK'),
                    )
                  ],
                );
              },
            );
          },
          failure: (String message) {
            Navigator.pop(context);
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: const Text('Error'),
                  content: Text(message),
                );
              },
            );
          },
        );
      },
      child: SafeArea(child: SingleChildScrollView(child: Signupview())),
    ));
  }
}
