import 'package:doc_app/core/theme/style.dart';
import 'package:doc_app/core/widgets/common_text_button.dart';
import 'package:doc_app/core/widgets/common_text_form_feild.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final GlobalKey formkey = GlobalKey<FormState>();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  bool isscure = true;
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: Form(
        child: Column(
          spacing: 15,
          children: [
            CommonTextFormFeild(
              controller: _email,
              hintText: 'Email',
              keyboardType: TextInputType.emailAddress,
            ),
            CommonTextFormFeild(
              controller: _password,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: _rememberMe,
                      onChanged: (bool? value) {
                        setState(() {
                          _rememberMe = value ?? false;
                        });
                      },
                    ),
                    Text(
                      'Remember Me  ',
                      style: Stylemanger.font12gray400wi,
                    ),
                  ],
                ),
                Text(
                  'forget password?',
                  style: Stylemanger.font14blue300wi,
                )
              ],
            ),
            CommonTextButton(
              text: 'Login',
              onpress: () {},
            )
          ],
        ),
      ),
    );
  }
}
