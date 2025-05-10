import 'package:doc_app/core/theme/style.dart';
import 'package:flutter/material.dart';

class PasswordValidations extends StatelessWidget {
  final bool hasUppercase;
  final bool hasLowercase;
  final bool hasNumber;
  final bool hasMinLength;
  final bool hasSpecialCharacters;
  const PasswordValidations(
      {super.key,
      required this.hasUppercase,
      required this.hasLowercase,
      required this.hasNumber,
      required this.hasMinLength,
      required this.hasSpecialCharacters});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        bulidValidtionRow('Uppercase', hasUppercase),
        bulidValidtionRow('Lowercase', hasLowercase),
        bulidValidtionRow('Number', hasNumber),
        bulidValidtionRow('Min Length', hasMinLength),
        bulidValidtionRow('Special Characters', hasSpecialCharacters),
      ],
    );
  }

  Widget bulidValidtionRow(String text, bool hasValidated) {
    return Row(
      children: [
        Icon(
          size: 15,
          hasValidated ? Icons.check : Icons.close,
          color: hasValidated ? Colors.green : Colors.red,
        ),
        Text(
          text,
          style: Stylemanger.font12gray400wi.copyWith(
              fontSize: 12,
              color: hasValidated ? Colors.green : Colors.red,
              decoration: hasValidated
                  ? TextDecoration.lineThrough
                  : TextDecoration.none),
        )
      ],
    );
  }
}
