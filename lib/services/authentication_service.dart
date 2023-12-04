import 'package:http/http.dart' as http;
import 'package:knapsnack/utils/constants.dart';
import 'dart:convert';
import 'package:knapsnack/repositories/auth_repository.dart';

class AuthenticationService {
  final AuthRepository _authRepo = AuthRepository();

  Future<http.Response> getAuthenticatedData(String url) async {
    String? token = await _authRepo.getToken();
    return http.get(
      Uri.parse(url),
      headers: {
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      },
    );
  }

  // Future<bool> registerUser(String username, String password) async {
  //   final response = await http.post(
  //     Uri.parse(APIConstants.register),
  //     headers: <String, String>{
  //       'Content-Type': 'application/json; charset=UTF-8',
  //     },
  //     body: jsonEncode(<String, String>{
  //       'username': username,
  //       'password': password,
  //     }),
  //   );

  //   return response.statusCode == 200;
  // }

  // Future<bool> loginUser(String username, String password) async {
  //   final response = await http.post(
  //     Uri.parse(APIConstants.register),
  //     headers: <String, String>{
  //       'Content-Type': 'application/json; charset=UTF-8'
  //     },
  //     body: jsonEncode(<String, String>{
  //       'username': username,
  //       'password': password,
  //     }),
  //   );

  //   return response.statusCode == 200;
  // }
}
