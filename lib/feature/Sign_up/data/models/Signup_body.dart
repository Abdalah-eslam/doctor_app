import 'package:json_annotation/json_annotation.dart';

part 'Signup_body.g.dart';

@JsonSerializable()
class SignupBody {
  final String name;
  final String email;
  final String password;
  final String phone;
  final String passwordConfirmation;
  final int gender;

  SignupBody(
      {required this.name,
      required this.email,
      required this.password,
      required this.phone,
      required this.passwordConfirmation,
      required this.gender});

  Map<String, dynamic> toJson() => _$SignupBodyToJson(this);
}
