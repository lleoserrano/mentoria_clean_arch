import 'dart:convert';

import '../../domain/entities/email_entity.dart';

extension EmailDto on EmailEntity {
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'userId': userId,
      'email': email,
      'verified': verified,
      'primary': primary,
    };
  }

  String toJson() => json.encode(toMap);

  static EmailEntity fromMap(Map<String, dynamic> map) {
    return EmailEntity(
      id: map['id'] ,
      userId: map['userId'] ,
      email: map['email'] ,
      verified: map['verified'] ,
      primary: map['primary'] ,
    );
  }
}
