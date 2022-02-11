import 'dart:convert';

void main() {
  String json =
      '{"User id":1000,"User name":"Person", "Token":"_fasdaggasdgasg"}';
  Map<String, dynamic> map = jsonDecode(json);
  User user = User.fromJson(map);

  print("User id:${user.uuid}");
  print("User name:${user.fullName}");
  print("User token:${user.token}");

  Map<String, dynamic> map2 = user.toJson();
  print(map2);
}

class User {
  int uuid;
  String fullName;
  String token;

  User(this.uuid, this.fullName, this.token);

  User.fromJson(Map<String, dynamic> json)
      : uuid = json['User id'],
        fullName = json['User name'],
        token = json['Token'];

  Map<String, dynamic> toJson() {
    return {'User id': uuid, 'User name': fullName, 'Token': token};
  }
}
