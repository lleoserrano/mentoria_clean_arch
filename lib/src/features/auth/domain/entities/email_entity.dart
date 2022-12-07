class EmailEntity {
  final int id;
  final int userId;
  final String email;
  final bool verified;
  final bool primary;

  EmailEntity({
    required this.id,
    required this.userId,
    required this.email,
    required this.verified,
    required this.primary,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'userId': userId,
      'email': email,
      'verified': verified,
      'primary': primary,
    };
  }
}
