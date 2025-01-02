import 'package:flutter/material.dart';

import '../../../../core/theme/style.dart';

class RememberMe extends StatefulWidget {
  const RememberMe({
    super.key,
  });

  @override
  State<RememberMe> createState() => _RememberMeState();
}

class _RememberMeState extends State<RememberMe> {
  bool rememberMe = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(
              value: rememberMe,
              onChanged: (bool? value) {
                setState(() {
                  rememberMe = value ?? false;
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
    );
  }
}
