class AuthUserModel {
  String? name;
  String? email;
  String? id;
  bool?accountType;
  AuthUserModel({
    required this.name,
    required this.email,
    required this.id,
    required this.accountType,
  });
  toMap() {
    return {
      "name": name,
      "email": email,
      "id": id,
      "accountType":accountType,
    };
  }

  factory AuthUserModel.fromMap(Map<String, dynamic> map) {
    return AuthUserModel(name: map["name"], email: map["email"], id: map["id"], accountType: map["accountType"]);
  }
  AuthUserModel copyWith({String? name, String? email, String? id,bool?accountType}) {
    return AuthUserModel(
        name: name ?? this.name, email: email ?? this.email, id: id ?? this.id, accountType: accountType??this.accountType);
  }
}
