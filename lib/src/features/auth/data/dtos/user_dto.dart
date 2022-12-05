import '../../domain/entities/user_entity.dart';

extension UserDto on UserEntity {
  Map toJson() => {
        'name': name,
        'email': email,
      };

  static UserEntity fromJson(Map<String, dynamic> json) => UserEntity(
        name: json['name'],
        email: json['email'],
      );
}
