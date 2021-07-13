import 'dart:convert';

class CompleteResetPasswordModel {
  String? mobileProjectId;
  String? email;
  String? token;
  String? password;

  CompleteResetPasswordModel({
    this.mobileProjectId,
    this.email,
    this.token,
    this.password,
  });

  CompleteResetPasswordModel copyWith({
    String? mobileProjectId,
    String? email,
    String? token,
    String? password,
  }) {
    return CompleteResetPasswordModel(
      mobileProjectId: mobileProjectId ?? this.mobileProjectId,
      email: email ?? this.email,
      token: token ?? this.token,
      password: password ?? this.password,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'mobileProjectId': mobileProjectId,
      'email': email,
      'token': token,
      'password': password,
    };
  }

  factory CompleteResetPasswordModel.fromMap(Map<String, dynamic> map) {
    return CompleteResetPasswordModel(
      mobileProjectId: map['mobileProjectId'],
      email: map['email'],
      token: map['token'],
      password: map['password'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CompleteResetPasswordModel.fromJson(String source) =>
      CompleteResetPasswordModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CompleteResetPasswordModel(mobileProjectId: $mobileProjectId, email: $email, token: $token, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CompleteResetPasswordModel &&
        other.mobileProjectId == mobileProjectId &&
        other.email == email &&
        other.token == token &&
        other.password == password;
  }

  @override
  int get hashCode {
    return mobileProjectId.hashCode ^
        email.hashCode ^
        token.hashCode ^
        password.hashCode;
  }
}
