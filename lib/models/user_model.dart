class UserModel {
  int? id;
  String? name;
  String? username;
  String? email;
  String? password;
  String? photo;

  UserModel({
    this.id,
    this.name,
    this.username,
    this.email,
    this.password,
    this.photo,
  });

  UserMap() {
    var mapping = Map<String, dynamic>();
    mapping['id'] = id ?? null;
    mapping['name'] = name!;
    mapping['username'] = username!;
    mapping['email'] = email!;
    mapping['password'] = password!;
    mapping['photo'] = photo!;
    return mapping;
  }
}
