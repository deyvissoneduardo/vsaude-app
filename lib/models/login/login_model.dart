import 'dart:convert';

class LoginModel {
  String? userNameOrEmailAddrees;
  String? password;
  String? mobileProjectId;

  LoginModel({
    this.userNameOrEmailAddrees,
    this.password,
    this.mobileProjectId,
  });

  Map<String, dynamic> toMap() {
    return {
      'userNameOrEmailAddrees': userNameOrEmailAddrees,
      'password': password,
      'mobileProjectId': mobileProjectId,
    };
  }

  factory LoginModel.fromMap(Map<String, dynamic> map) {
    return LoginModel(
      userNameOrEmailAddrees: map['userNameOrEmailAddrees'],
      password: map['password'],
      mobileProjectId: map['mobileProjectId'],
    );
  }

  String toJson() => json.encode(toMap());

  factory LoginModel.fromJson(String source) =>
      LoginModel.fromMap(json.decode(source));
}
