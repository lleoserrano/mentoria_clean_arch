import 'dart:convert';

import '../../domain/entities/user_entity.dart';

extension UserDto on UserEntity {
  Map toMap() => {
        'name': name,
        'email': email,
      };
  String toJson() => json.encode(toMap);
  static UserEntity fromJson(Map<String, dynamic> json) => UserEntity(
        name: json['name'],
        email: json['email'],
      );
}
