import 'dart:convert';

class LoginModel {
  String? userNameOrEmailAddress;
  String? password;
  String? mobileProjectId;

  LoginModel({
    this.userNameOrEmailAddress,
    this.password,
    this.mobileProjectId,
  });

  LoginModel copyWith({
    String? userNameOrEmailAddress,
    String? password,
    String? mobileProjectId,
  }) {
    return LoginModel(
      userNameOrEmailAddress:
          userNameOrEmailAddress ?? this.userNameOrEmailAddress,
      password: password ?? this.password,
      mobileProjectId: mobileProjectId ?? this.mobileProjectId,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'userNameOrEmailAddress': userNameOrEmailAddress,
      'password': password,
      'mobileProjectId': mobileProjectId,
    };
  }

  factory LoginModel.fromMap(Map<String, dynamic> map) {
    return LoginModel(
      userNameOrEmailAddress: map['userNameOrEmailAddress'],
      password: map['password'],
      mobileProjectId: map['mobileProjectId'],
    );
  }

  String toJson() => json.encode(toMap());

  factory LoginModel.fromJson(String source) =>
      LoginModel.fromMap(json.decode(source));

  @override
  String toString() =>
      'LoginModel(userNameOrEmailAddress: $userNameOrEmailAddress, password: $password, mobileProjectId: $mobileProjectId)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is LoginModel &&
        other.userNameOrEmailAddress == userNameOrEmailAddress &&
        other.password == password &&
        other.mobileProjectId == mobileProjectId;
  }

  @override
  int get hashCode =>
      userNameOrEmailAddress.hashCode ^
      password.hashCode ^
      mobileProjectId.hashCode;
}
