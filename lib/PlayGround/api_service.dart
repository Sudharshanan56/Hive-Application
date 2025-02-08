import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = "http://localhost:3000/api/hiveapp/getOrCreateUser"; // Replace with actual API URL

  // Function to check or save mobile number
  static Future<Map<String, dynamic>> checkOrSaveMobileNumber(String mobileNumber) async {
    final Uri uri = Uri.parse("$baseUrl?mobile=$mobileNumber");

    try {
      // Sending GET request to check if number exists
      final response = await http.get(uri);

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        return {"status": "exists", "data": data}; // User exists
      } else if (response.statusCode == 404) {
        // If user does not exist, send POST request to save the number
        final postResponse = await http.post(
          Uri.parse(baseUrl),
          headers: {"Content-Type": "application/json"},
          body: jsonEncode({"mobile": mobileNumber}),
        );

        if (postResponse.statusCode == 201) {
          return {"status": "saved", "message": "Number saved successfully"};
        } else {
          return {"status": "error", "message": "Failed to save number"};
        }
      } else {
        return {"status": "error", "message": "Unexpected error occurred"};
      }
    } catch (e) {
      return {"status": "error", "message": e.toString()};
    }
  }
}
