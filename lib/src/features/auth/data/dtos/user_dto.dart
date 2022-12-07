import 'dart:convert';

import '../../domain/entities/email_entity.dart';
import '../../domain/entities/user_entity.dart';
import 'email_dto.dart';

extension UserDto on UserEntity {
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'avatarUrl': avatarUrl,
      'name': name,
      'firstName': firstName,
      'lastName': lastName,
      'taxpayerId': taxpayerId,
      'taxpayerIdFormatted': taxpayerIdFormatted,
      'identityDocument': identityDocument,
      'birthday': birthday,
      'isBlocked': isBlocked,
      'isStaff': isStaff,
      'isActive': isActive,
      'dateJoined': dateJoined,
      'emails': emails.map((x) => x.toMap()).toList(),
      'phones': phones,
      'addresses': addresses,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'refreshToken': refreshToken,
      'accessToken': accessToken,
      'tokenExpireIn': tokenExpireIn,
    };
  }

  String toJson() => json.encode(toMap);

  static UserEntity fromMap(Map<String, dynamic> map) {
    return UserEntity(
      id: map['user']['id'],
      avatarUrl: map['user']['avatarUrl'],
      name: map['user']['name'],
      firstName: map['user']['firstName'],
      lastName: map['user']['lastName'],
      taxpayerId: map['user']['taxpayerId'],
      taxpayerIdFormatted: map['user']['taxpayerIdFormatted'],
      identityDocument: map['user']['identityDocument'],
      birthday: map['user']['birthday'],
      isBlocked: map['user']['isBlocked'],
      isStaff: map['user']['isStaff'],
      isActive: map['user']['isActive'],
      dateJoined: map['user']['dateJoined'],
      emails: List<EmailEntity>.from(
          map['user']['emails']?.map((x) => EmailDto.fromMap(x))),
      phones: map['user']['phones'],
      addresses: map['user']['addresses'],
      createdAt: map['user']['createdAt'],
      updatedAt: map['user']['updatedAt'],
      refreshToken: map['refresh'],
      accessToken: map['access'],
      tokenExpireIn: map['expireIn'],
    );
  }
}
