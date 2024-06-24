import '5-json_to_user.dart';

void main() {
  final djo = User(id: 1, name: "Djo", age: 25, height: 1.89);
  print(djo.toJson());
  Map map = {'id': 3, 'name': 'Youssef', 'age': 26, 'height': 1.9};
  final youssef = User.fromJson(map);
  print(djo.toString());
  print(youssef.toString());
}
