import 'dart:convert';

class StartResetPasswordModel {
  String? mobileProjectId;
  String? email;

  StartResetPasswordModel({
    this.mobileProjectId,
    this.email,
  });

  StartResetPasswordModel copyWith({
    String? mobileProjectId,
    String? email,
  }) {
    return StartResetPasswordModel(
      mobileProjectId: mobileProjectId ?? this.mobileProjectId,
      email: email ?? this.email,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'mobileProjectId': mobileProjectId,
      'email': email,
    };
  }

  factory StartResetPasswordModel.fromMap(Map<String, dynamic> map) {
    return StartResetPasswordModel(
      mobileProjectId: map['mobileProjectId'],
      email: map['email'],
    );
  }

  String toJson() => json.encode(toMap());

  factory StartResetPasswordModel.fromJson(String source) =>
      StartResetPasswordModel.fromMap(json.decode(source));

  @override
  String toString() =>
      'StartResetPasswordModel(mobileProjectId: $mobileProjectId, email: $email)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is StartResetPasswordModel &&
        other.mobileProjectId == mobileProjectId &&
        other.email == email;
  }

  @override
  int get hashCode => mobileProjectId.hashCode ^ email.hashCode;
}
