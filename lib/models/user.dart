import 'package:knapsnack/models/consumable.dart';

class User {
  final int id;
  final String username, password;
  int money, experience, level;
  List<Consumable> favorites;

  User({
    required this.id,
    required this.username,
    required this.password,
    required this.money,
    required this.experience,
    required this.level,
    required this.favorites,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    var consumablesList = <Consumable>[];
    if (json['favorite_consumables'] != null) {
      consumablesList = (json['favorite_consumables'] as List)
          .map((item) => Consumable.fromJson(item))
          .toList();
    }

    return User(
      id: json['id'],
      username: json['username'],
      password: json['password'],
      money: json['money'],
      experience: json['experience'],
      level: json['level'],
      favorites: consumablesList,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'username': username,
      'password': password,
      'money': money,
      'experience': experience,
      'level': level,
      'favorites': favorites,
    };
  }
}
