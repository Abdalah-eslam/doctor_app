import 'package:json_annotation/json_annotation.dart';

part 'Requst_Login_model.g.dart';

@JsonSerializable()
class RequstLoginModel {
  final String email;
  final String password;

  RequstLoginModel({
    required this.email,
    required this.password,
  });

  Map<String, dynamic> toJson() => _$RequstLoginModelToJson(this);
}
