import '4-get_sum.dart';

main() async {
  double result = await calculateTotal();
  if (result == -1) {
    print(result.toInt());
  } else {
    print(result);
  }
}
