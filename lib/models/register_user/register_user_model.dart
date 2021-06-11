import 'dart:convert';

class RegisterUserModel {
  String? tenantId;
  String? name;
  String? surname;
  String? emailAddress;
  String? isActive;
  String? roles;
  String? password;
  String? phoneNumber;
  String? personalIdentifier;
  String? gender;
  String? birthday;
  String? invitation;

  RegisterUserModel(
      {this.tenantId,
      this.name,
      this.surname,
      this.emailAddress,
      this.isActive,
      this.roles,
      this.password,
      this.phoneNumber,
      this.personalIdentifier,
      this.gender,
      this.birthday,
      this.invitation});

  RegisterUserModel copyWith({
    String? tenantId,
    String? name,
    String? surname,
    String? emailAddress,
    String? isActive,
    String? roles,
    String? password,
    String? phoneNumber,
    String? personalIdentifier,
    String? gender,
    String? birthday,
    String? invitation,
  }) {
    return RegisterUserModel(
      tenantId: tenantId ?? this.tenantId,
      name: name ?? this.name,
      surname: surname ?? this.surname,
      emailAddress: emailAddress ?? this.emailAddress,
      isActive: isActive ?? this.isActive,
      roles: roles ?? this.roles,
      password: password ?? this.password,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      personalIdentifier: personalIdentifier ?? this.personalIdentifier,
      gender: gender ?? this.gender,
      birthday: birthday ?? this.birthday,
      invitation: invitation ?? this.invitation,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'tenantId': tenantId,
      'name': name,
      'surname': surname,
      'emailAddress': emailAddress,
      'isActive': isActive,
      'roles': roles,
      'password': password,
      'phoneNumber': phoneNumber,
      'personalIdentifier': personalIdentifier,
      'gender': gender,
      'birthday': birthday,
      'invitation': invitation,
    };
  }

  factory RegisterUserModel.fromMap(Map<String, dynamic> map) {
    return RegisterUserModel(
      tenantId: map['tenantId'],
      name: map['name'],
      surname: map['surname'],
      emailAddress: map['emailAddress'],
      isActive: map['isActive'],
      roles: map['roles'],
      password: map['password'],
      phoneNumber: map['phoneNumber'],
      personalIdentifier: map['personalIdentifier'],
      gender: map['gender'],
      birthday: map['birthday'],
      invitation: map['invitation'],
    );
  }

  String toJson() => json.encode(toMap());

  factory RegisterUserModel.fromJson(String source) =>
      RegisterUserModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'RegisterUserModel(tenantId: $tenantId, name: $name, surname: $surname, emailAddress: $emailAddress, isActive: $isActive, roles: $roles, password: $password, phoneNumber: $phoneNumber, personalIdentifier: $personalIdentifier, gender: $gender, birthday: $birthday, invitation: $invitation)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is RegisterUserModel &&
        other.tenantId == tenantId &&
        other.name == name &&
        other.surname == surname &&
        other.emailAddress == emailAddress &&
        other.isActive == isActive &&
        other.roles == roles &&
        other.password == password &&
        other.phoneNumber == phoneNumber &&
        other.personalIdentifier == personalIdentifier &&
        other.gender == gender &&
        other.birthday == birthday &&
        other.invitation == invitation;
  }

  @override
  int get hashCode {
    return tenantId.hashCode ^
        name.hashCode ^
        surname.hashCode ^
        emailAddress.hashCode ^
        isActive.hashCode ^
        roles.hashCode ^
        password.hashCode ^
        phoneNumber.hashCode ^
        personalIdentifier.hashCode ^
        gender.hashCode ^
        birthday.hashCode ^
        invitation.hashCode;
  }
}
