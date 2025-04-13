import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class SmartAquacultureService {
  final String baseUrl = 'http://127.0.0.1:8000';

  // Login with application/x-www-form-urlencoded
  Future<bool> login(String username, String password) async {
    final url = Uri.parse('$baseUrl/token/');

    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      body: {
        'username': username,
        'password': password,
      },
    );

    if (response.statusCode == 200) {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('token', jsonDecode(response.body)['access_token']);
      await prefs.setString('username', jsonDecode(response.body)['username']);
      return true;
    } else {
      return false;
    }
  }

  // Fetch environment data (temperature, pH, turbidity)
  Future<Map<String, dynamic>> fetchEnvData(String token) async {
    final url = Uri.parse('$baseUrl/env-data');

    final response = await http.get(
      url,
      headers: {
        'Authorization': 'Bearer $token',
        'Accept': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to fetch environmental data: ${response.body}');
    }
  }
}
