import '1-usertojson.dart';

void main() {
  final user = User(name: "Youssef", age: 25, height: 1.89);
  print(user.toJson()); // Should print: {name: Youssef, age: 25, height: 1.89}
}
