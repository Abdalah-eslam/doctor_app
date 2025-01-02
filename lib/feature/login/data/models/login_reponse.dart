import 'package:json_annotation/json_annotation.dart';
part 'login_reponse.g.dart';

@JsonSerializable()
class LoginReponse {
  String? massage;
  @JsonKey(name: 'data')
  UserData? userData;
  bool? status;
  int? code;

  LoginReponse({
    this.massage,
    this.userData,
    this.status,
  });
  factory LoginReponse.fromJson(Map<String, dynamic> json) =>
      _$LoginReponseFromJson(json);
}

@JsonSerializable()
class UserData {
  String? token;
  @JsonKey(name: 'username')
  String? userName;

  UserData({this.token, this.userName});

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}
