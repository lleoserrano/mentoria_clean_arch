import 'dart:convert';

import '../../domain/entities/auth_entity.dart';

extension AuthDto on AuthEntity {
  Map toMap() => {
        'username': userName,
        "password": password,
      };

  String toJson() => json.encode(toMap);

  static AuthEntity fromJson(Map<String, dynamic> json) => AuthEntity(
        userName: json['userName'],
        password: json['password'],
      );
}
