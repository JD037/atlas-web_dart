import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printRmCharacters() async {
  final url = 'https://rickandmortyapi.com/api/character';
  try {
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      for (var character in data['results']) {
        print(character['name']);
      }
    } else {
      print('Failed to load characters');
    }
  } catch (e) {
    print('error caught: $e');
  }
}
