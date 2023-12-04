class APIConstants {
  static const String baseUrl = 'http://127.0.0.1:8000';

  static const String register = '$baseUrl/register_user/';
  static const String login = '$baseUrl/login_user/';

  static const String consumables = '$baseUrl/consumables/';
  static const String createConsumables = '$baseUrl/consumables/create/';

  static String getConsumable(int id) {
    return '$baseUrl/consumables/$id/';
  }

  static String updateConsumable(int id) {
    return '$baseUrl/consumables/$id/update/';
  }

  static String deleteConsumable(int id) {
    return '$baseUrl/consumables/$id/delete/';
  }
}
