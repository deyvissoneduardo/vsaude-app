import 'dart:convert';

class RegisterUserModel {
  String? mobileProjectId;
  String? tenantId;
  String? fullName;
  String? emailAddress;
  String? password;
  String? phone;

  RegisterUserModel({
    this.mobileProjectId,
    this.tenantId,
    this.fullName,
    this.emailAddress,
    this.password,
    this.phone,
  });

  RegisterUserModel copyWith({
    String? mobileProjectId,
    String? tenantId,
    String? fullName,
    String? emailAddress,
    String? password,
    String? phone,
  }) {
    return RegisterUserModel(
      mobileProjectId: mobileProjectId ?? this.mobileProjectId,
      tenantId: tenantId ?? this.tenantId,
      fullName: fullName ?? this.fullName,
      emailAddress: emailAddress ?? this.emailAddress,
      password: password ?? this.password,
      phone: phone ?? this.phone,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'mobileProjectId': mobileProjectId,
      'tenantId': tenantId,
      'fullName': fullName,
      'emailAddress': emailAddress,
      'password': password,
      'phone': phone,
    };
  }

  factory RegisterUserModel.fromMap(Map<String, dynamic> map) {
    return RegisterUserModel(
      mobileProjectId: map['mobileProjectId'],
      tenantId: map['tenantId'],
      fullName: map['fullName'],
      emailAddress: map['emailAddress'],
      password: map['password'],
      phone: map['phone'],
    );
  }

  String toJson() => json.encode(toMap());

  factory RegisterUserModel.fromJson(String source) =>
      RegisterUserModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'RegisterUserModel(mobileProjectId: $mobileProjectId, tenantId: $tenantId, fullName: $fullName, emailAddress: $emailAddress, password: $password, phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is RegisterUserModel &&
        other.mobileProjectId == mobileProjectId &&
        other.tenantId == tenantId &&
        other.fullName == fullName &&
        other.emailAddress == emailAddress &&
        other.password == password &&
        other.phone == phone;
  }

  @override
  int get hashCode {
    return mobileProjectId.hashCode ^
        tenantId.hashCode ^
        fullName.hashCode ^
        emailAddress.hashCode ^
        password.hashCode ^
        phone.hashCode;
  }
}
