import 'dart:convert';

class ResetPasswordModel {
  String? mobileProjectId;
  String? email;

  ResetPasswordModel({
    this.mobileProjectId,
    this.email,
  });

  ResetPasswordModel copyWith({
    String? mobileProjectId,
    String? email,
  }) {
    return ResetPasswordModel(
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

  factory ResetPasswordModel.fromMap(Map<String, dynamic> map) {
    return ResetPasswordModel(
      mobileProjectId: map['mobileProjectId'],
      email: map['email'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ResetPasswordModel.fromJson(String source) =>
      ResetPasswordModel.fromMap(json.decode(source));

  @override
  String toString() =>
      'ResetPasswordModel(mobileProjectId: $mobileProjectId, email: $email)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ResetPasswordModel &&
        other.mobileProjectId == mobileProjectId &&
        other.email == email;
  }

  @override
  int get hashCode => mobileProjectId.hashCode ^ email.hashCode;
}
