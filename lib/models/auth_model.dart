class AuthUserModel {
  String? name;
  String? email;
  String? id;
  AuthUserModel({
    required this.name,
    required this.email,
    required this.id,
  });
  toMap() {
    return {
      "name": name,
      "email": email,
      "id": id,
    };
  }

  factory AuthUserModel.fromMap(Map<String, dynamic> map) {
    return AuthUserModel(name: map["name"], email: map["email"], id: map["id"]);
  }
  AuthUserModel copyWith({String? name, String? email, String? id}) {
    return AuthUserModel(
        name: name ?? this.name, email: email ?? this.email, id: id ?? this.id);
  }
}
