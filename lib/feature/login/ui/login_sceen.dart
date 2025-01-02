import 'package:doc_app/core/helper/extentions.dart';

import 'package:doc_app/core/routing/routes.dart';
import 'package:doc_app/core/theme/style.dart';
import 'package:doc_app/feature/login/ui/widgets/totaly_login_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../logic/cubit/login_cubit.dart';
import '../logic/cubit/login_state.dart';

class LoginSceen extends StatelessWidget {
  const LoginSceen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<LoginCubit, LoginState>(
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
              Navigator.pushNamed(context, Routes.home);
            },
            failure: (data) {
              Navigator.pop(context);
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text(data)));
            },
          );
        },
        child: SafeArea(
          child: GestureDetector(
              behavior: HitTestBehavior.translucent,
              child: SingleChildScrollView(child: TotalyLoginView()),
              onTap: () => FocusScope.of(context).unfocus()),
        ),
      ),
    );
  }
}
