import '4-get_sum.dart';

main() async {
  double result = await calculateTotal();
  if (result == -1.0) {
    print(result.toInt()); // Print -1 as an integer
  } else {
    print(result);
  }
}
