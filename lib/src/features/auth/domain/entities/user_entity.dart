import 'email_entity.dart';

class UserEntity {
  final int id;
  final String avatarUrl;
  final String name;
  final String firstName;
  final String lastName;
  final String? taxpayerId;
  final String? taxpayerIdFormatted;
  final String? identityDocument;
  final String? birthday;
  final bool isBlocked;
  final bool isStaff;
  final bool isActive;
  final String dateJoined;
  List<EmailEntity> emails;
  final List phones;
  final List addresses;
  final String createdAt;
  final String updatedAt;

  final String refreshToken;
  final String accessToken;
  final String tokenExpireIn;

  UserEntity({
    required this.id,
    required this.avatarUrl,
    required this.name,
    required this.firstName,
    required this.lastName,
    required this.taxpayerId,
    required this.taxpayerIdFormatted,
    required this.identityDocument,
    required this.birthday,
    required this.isBlocked,
    required this.isStaff,
    required this.isActive,
    required this.dateJoined,
    required this.emails,
    required this.phones,
    required this.addresses,
    required this.createdAt,
    required this.updatedAt,
    required this.refreshToken,
    required this.accessToken,
    required this.tokenExpireIn,
  });
}
