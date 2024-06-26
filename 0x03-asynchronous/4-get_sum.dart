import 'dart:convert';
import '4-util.dart';

Future<double> calculateTotal() async {
  try {
    // Fetch user data
    String userData = await fetchUserData();
    Map<String, dynamic> userMap = jsonDecode(userData);
    String userId = userMap['id'];

    // Fetch user orders
    String ordersData = await fetchUserOrders(userId);
    List<dynamic> orders = jsonDecode(ordersData);

    // Calculate total price
    double total = 0.0;
    for (var item in orders) {
      String priceData = await fetchProductPrice(item);
      double price = double.parse(priceData);
      total += price;
    }

    return total;
  } catch (e) {
    return -1.0; // Return -1.0 as double for further conversion
  }
}
