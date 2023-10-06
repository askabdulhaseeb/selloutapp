import 'dart:math';

import '../../features/auth/core/local_source/local_auth.dart';

class UniqueIdFun {
  static String generateRandomString({int length = 6}) {
    const String letterLowerCase = 'abcdefghijklmnopqrstuvwxyz';
    const String letterUpperCase = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    // don't user 0, it confuse users sometimes with 'o' and 'O'
    const String number = '123456789';
    final String possibleChar =
        letterLowerCase + LocalAuth.uid + letterUpperCase + number;
    return List<String>.generate(length, (int index) {
      final int indexRandom = Random.secure().nextInt(possibleChar.length);
      return possibleChar[indexRandom];
    }).join('').trim();
  }

  static String get postID => '${LocalAuth.uid}${DateTime.now().microsecond}';

  static String get storyID =>
      '${LocalAuth.uid}-story-${DateTime.now().microsecond}';

  static String get offerID => '${LocalAuth.uid}${DateTime.now().microsecond}';

  static String personalChatID({required String chatWith}) {
    int isGreaterThen = LocalAuth.uid.compareTo(chatWith);
    if (isGreaterThen > 0) {
      return '${LocalAuth.uid}-chats-$chatWith';
    } else {
      return '$chatWith-chats-${LocalAuth.uid}';
    }
  }

  static String chatGroupID() {
    return '${LocalAuth.uid}-group-${DateTime.now().microsecond}';
  }

  static String productID(String pid) {
    return '${LocalAuth.uid}$pid';
  }

  static String auctionID() {
    return '${LocalAuth.uid}-auction-${DateTime.now().microsecond}';
  }

  static String listingID(String value) {
    final String str = value.contains(' ')
        ? value.trim().toLowerCase().substring(0, value.indexOf(' '))
        : value.trim().toLowerCase();
    return '$str-${generateRandomString(length: 2)}';
  }

  static String categoryID(String catTitle) {
    final String str = catTitle.contains(' ')
        ? catTitle.trim().toLowerCase().replaceAll(' ', '-')
        : catTitle.trim().toLowerCase();
    return str;
  }
}
