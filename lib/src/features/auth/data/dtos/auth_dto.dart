import '../../domain/entities/auth_entity.dart';

extension UserDto on AuthEntity {
  Map toJson() => {
        'email': email,
      };

  static AuthEntity fromJson(Map<String, dynamic> json) => AuthEntity(
        email: json['email'],
      );
}
