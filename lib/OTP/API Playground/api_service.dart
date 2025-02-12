import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl =
      "http://localhost:3000/api/hiveapp/getOrCreateUser";

  // Function to post mobile number
  static Future<Map<String, dynamic>> postMobileNumber(
      String userId, String mobileNumber) async {
    final Uri uri = Uri.parse(
        "http://localhost:3000/api/hiveapp/getOrCreateUser?userId=abcd&mobileNumber=1234567890");

    try {
      final response = await http.post(
        uri,
        headers: {"Content-Type": "application/json"},
      );

      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        return {"status": "error", "message": "Failed to submit mobile number"};
      }
    } catch (e) {
      return {"status": "error", "message": e.toString()};
    }
  }
}
