import 'package:flutter_test/flutter_test.dart';
import 'package:mentoria_clean_arch/src/features/auth/data/dtos/user_dto.dart';

void main() {
  Map<String, dynamic> fakeJsonUser = {
    "refresh": "abc",
    "access": "abc",
    "expireIn": "2022-12-07T17:53:39.981851+00:00",
    "user": {
      "id": 19,
      "avatarUrl": "https://robohash.org/heroapi-19.png",
      "name": " ",
      "firstName": "",
      "lastName": "",
      "taxpayerId": null,
      "taxpayerIdFormatted": null,
      "identityDocument": null,
      "birthday": null,
      "isBlocked": false,
      "isStaff": false,
      "isActive": true,
      "dateJoined": "2022-12-05T21:25:51.082782Z",
      "emails": [
        {
          "id": 4,
          "userId": 19,
          "email": "abc",
          "verified": false,
          "primary": false
        }
      ],
      "phones": [],
      "addresses": [],
      "createdAt": "2022-12-05T21:25:51.430519Z",
      "updatedAt": "2022-12-05T21:25:51.430531Z"
    }
  };
  testWidgets('Testa o fromMap do UserDto, espera sucesso.', (tester) async {
    final result = UserDto.fromMap(fakeJsonUser);
    expect(result.id, 19);
    expect(result.refreshToken, 'abc');
    expect(result.accessToken, 'abc');
    expect(result.tokenExpireIn, '2022-12-07T17:53:39.981851+00:00');
  });
}
