import 'package:http/http.dart' as http;
import 'package:ppkd_b_2/helper/preference.dart';
import 'package:ppkd_b_2/meet_25/endpoint.dart';
import 'package:ppkd_b_2/meet_25/model/profile_response.dart';
import 'package:ppkd_b_2/meet_25/model/register_error_response.dart';
import 'package:ppkd_b_2/meet_25/model/register_response.dart';

class UserService {
  Future<Map<String, dynamic>> registerUser({
    required String email,
    required String name,
    required String password,
  }) async {
    final response = await http.post(
      Uri.parse(Endpoint.register),
      headers: {"Accept": "application/json"},
      body: {"name": name, "email": email, "password": password},
    );
    print(response.body);
    print(response.statusCode);
    if (response.statusCode == 200) {
      print(registerResponseFromJson(response.body).toJson());
      return registerResponseFromJson(response.body).toJson();
    } else if (response.statusCode == 422) {
      return registerErrorResponseFromJson(response.body).toJson();
    } else {
      print("Failed to register user: ${response.statusCode}");
      throw Exception("Failed to register user: ${response.statusCode}");
    }
  }

  Future<Map<String, dynamic>> login({
    required String email,
    required String password,
  }) async {
    final response = await http.post(
      Uri.parse(Endpoint.login),
      headers: {"Accept": "application/json"},
      body: {"email": email, "password": password},
    );
    print(response.body);
    print(response.body);
    if (response.statusCode == 200) {
      print(registerResponseFromJson(response.body).toJson());
      return registerResponseFromJson(response.body).toJson();
    } else if (response.statusCode == 422) {
      return registerErrorResponseFromJson(response.body).toJson();
    } else {
      print("Failed to register user: ${response.statusCode}");
      throw Exception("Failed to register user: ${response.statusCode}");
    }
  }

  Future<Map<String, dynamic>> getProfile() async {
    String? token = await PreferenceHandler.getToken();
    final response = await http.get(
      Uri.parse(Endpoint.profile),
      headers: {"Accept": "application/json", "Authorization": "Bearer $token"},
    );
    print(response.body);
    print(response.body);
    if (response.statusCode == 200) {
      print(profileResponseFromJson(response.body).toJson());
      return profileResponseFromJson(response.body).toJson();
    } else if (response.statusCode == 422) {
      return registerErrorResponseFromJson(response.body).toJson();
    } else {
      print("Failed to register user: ${response.statusCode}");
      throw Exception("Failed to register user: ${response.statusCode}");
    }
  }
}
