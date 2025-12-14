import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiService {
  static Future<int> registerUser(
    String prenom,
    String nom,
    String email,
    String password,
  ) async {
    final String baseUrl = dotenv.env['API_BASE_URL']!;
    final uri = Uri.parse("$baseUrl/users");

    final headers = {
      'Content-Type': 'application/ld+json',
      'Accept': 'application/ld+json',
    };

    final body = json.encode({
      'prenom': prenom,
      'nom': nom,
      'email': email,
      'password': password,
    });

    try {
      final response = await http.post(uri, headers: headers, body: body);
      return response.statusCode;
    } catch (e) {
      return 0;
    }
  }
}
