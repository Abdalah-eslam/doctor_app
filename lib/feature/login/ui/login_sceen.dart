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
              context.pop();
              context.pushnamed(Routes.home);
            },
            failure: (message) {
              context.pop();
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        content: Text(
                          message,
                          style: Stylemanger.font24black700wi
                              .copyWith(color: Colors.red),
                        ),
                        actions: [
                          TextButton(
                              onPressed: () => context.pop(),
                              child: const Text('Ok'))
                        ],
                      ));
            },
          );
        },
        child: SafeArea(
          child: GestureDetector(
              behavior: HitTestBehavior.translucent,
              child: TotalyLoginView(),
              onTap: () => FocusScope.of(context).unfocus()),
        ),
      ),
    );
  }
}
