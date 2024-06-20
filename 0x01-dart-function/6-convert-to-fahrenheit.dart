List<double> convertToF(List<double> temperaturesInC) {
  return temperaturesInC.map((temp) {
    double fahrenheit = (temp * 9 / 5) + 32;
    return double.parse(fahrenheit.toStringAsFixed(2));
  }).toList();
}
