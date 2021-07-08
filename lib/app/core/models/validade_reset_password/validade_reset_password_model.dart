import 'dart:convert';

class ValidadeResetPasswordModel {
  String? email;
  String? code;

  ValidadeResetPasswordModel({
    this.email,
    this.code,
  });

  ValidadeResetPasswordModel copyWith({
    String? email,
    String? code,
  }) {
    return ValidadeResetPasswordModel(
      email: email ?? this.email,
      code: code ?? this.code,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'code': code,
    };
  }

  factory ValidadeResetPasswordModel.fromMap(Map<String, dynamic> map) {
    return ValidadeResetPasswordModel(
      email: map['email'],
      code: map['code'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ValidadeResetPasswordModel.fromJson(String source) =>
      ValidadeResetPasswordModel.fromMap(json.decode(source));

  @override
  String toString() => 'ValidadeResetPasswordModel(email: $email, code: $code)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ValidadeResetPasswordModel &&
        other.email == email &&
        other.code == code;
  }

  @override
  int get hashCode => email.hashCode ^ code.hashCode;
}
