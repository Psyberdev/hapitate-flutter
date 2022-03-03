import 'dart:convert';
import 'package:http/http.dart' as http;

class UserToken {
  static String apiUrl = "https://apidev.hapitate.in/accounts/login";
  static Future<void> getUserToken(String username, String password) async {
    var client = http.Client();
    var response = await client.post(Uri.parse(apiUrl),
        body: {"email": username, "password": password, "user_type": "Admin"});
    print(response.statusCode);
  }
}
