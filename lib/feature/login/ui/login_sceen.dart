import 'package:doc_app/feature/login/ui/widgets/totaly_login_view.dart';
import 'package:flutter/material.dart';

class LoginSceen extends StatelessWidget {
  const LoginSceen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
            behavior: HitTestBehavior.translucent,
            child: TotalyLoginView(),
            onTap: () => FocusScope.of(context).unfocus()),
      ),
    );
  }
}
