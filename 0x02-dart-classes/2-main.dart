import '2-password.dart';

void main() {
  final ps = Password();
  ps.password = "Just3z";
  if (ps.isValid()) {
    print("${ps.password} is a Valid Password");
  } else {
    print("${ps.password} is Not a Valid Password");
  }
  print(ps.toString());

  ps.password = "ShouldWorkf7ne";
  if (ps.isValid()) {
    print("${ps.password} is a Valid Password");
  } else {
    print("${ps.password} is Not a Valid Password");
  }
  print(ps.toString());
}
