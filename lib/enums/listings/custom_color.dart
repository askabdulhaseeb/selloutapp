import 'package:flutter/material.dart';

enum CustomColor {
  black('Black', 'black', Color(0xFF000000)),
  brown('Brown', 'brown', Color(0xFF964B00)),
  grey('Grey', 'grey', Color(0xFF808080)),
  beige('Beige', 'beige', Color(0xFFF5F5DC)),
  pink('Pink', 'pink', Color(0xFFFFC0CB)),
  purple('Purple', 'purple', Color(0xFF800080)),
  red('Red', 'red', Color(0xFFFF0000)),
  yellow('Yellow', 'yellow', Color(0xFFFFFF00)),
  blue('Blue', 'blue', Color(0xFF0000FF)),
  green('Green', 'green', Color(0xFF008000)),
  orange('Orange', 'orange', Color(0xFFFFA500)),
  white('White', 'white', Color(0xFFFFFFFF)),
  offWhite('Off White', 'off_white', Color(0xFFFAF9F6)),
  charcoal('Charcoal', 'charcoal', Color(0xFF36454F)),
  silver('Silver', 'silver', Color(0xFFC0C0C0)),
  gold('Gold', 'gold', Color(0xFFFFD700)),
  multi('Multi', 'multi_color', Color(0x0FFFFFFF)),
  khaki('Khaki', 'khaki', Color(0xFFC3B091)),
  turquoise('Turquoise', 'turquoise', Color(0xFF30D5C8)),
  cream('Cream', 'cream', Color(0xFFfffdd0)),
  apricot('Apricot', 'apricot', Color(0xFFFBCEB1)),
  coral('Coral', 'coral', Color(0xFFFF7F50)),
  burgundy('Burgundy', 'burgundy', Color(0xFF800020)),
  rose('Rose', 'rose', Color(0xFFFF007F)),
  lilac('Lilac', 'lilac', Color(0xFFAA98A9)),
  lightBlue('Light Blue', 'blue_light', Color(0xFFADD8E6)),
  navy('Navy', 'navy', Color(0xFF000080)),
  darkGreen('Dark Green', 'green_dark', Color(0xFF013220)),
  mustard('Mustard', 'mustard', Color(0xFFE1AD01)),
  tan('Tan', 'tan', Color(0xFFD2B48C)),
  other('Other', 'other', Color(0x0FFFFFFF));

  const CustomColor(this.title, this.json, this.color);
  final String title;
  final String json;
  final Color color;
}

class CustomColorFun {
  static List<CustomColor> get allColors => <CustomColor>[
        CustomColor.black,
        CustomColor.brown,
        CustomColor.grey,
        CustomColor.beige,
        CustomColor.pink,
        CustomColor.purple,
        CustomColor.red,
        CustomColor.yellow,
        CustomColor.blue,
        CustomColor.green,
        CustomColor.orange,
        CustomColor.white,
        CustomColor.silver,
        CustomColor.gold,
        CustomColor.multi,
        CustomColor.khaki,
        CustomColor.turquoise,
        CustomColor.cream,
        CustomColor.apricot,
        CustomColor.coral,
        CustomColor.burgundy,
        CustomColor.rose,
        CustomColor.lilac,
        CustomColor.lightBlue,
        CustomColor.navy,
        CustomColor.darkGreen,
        CustomColor.mustard,
        CustomColor.other,
      ];

  static List<CustomColor> get vehicles => <CustomColor>[
        CustomColor.black,
        CustomColor.brown,
        CustomColor.grey,
        CustomColor.beige,
        CustomColor.pink,
        CustomColor.purple,
        CustomColor.red,
        CustomColor.yellow,
        CustomColor.blue,
        CustomColor.green,
        CustomColor.orange,
        CustomColor.white,
        CustomColor.offWhite,
        CustomColor.tan,
        CustomColor.silver,
        CustomColor.gold,
        CustomColor.turquoise,
        CustomColor.burgundy,
        CustomColor.other,
      ];

  static CustomColor fromMap(String value) {
    switch (value) {
      case 'black':
        return CustomColor.black;
      case 'brown':
        return CustomColor.brown;
      case 'grey':
        return CustomColor.grey;
      case 'beige':
        return CustomColor.beige;
      case 'pink':
        return CustomColor.pink;
      case 'purple':
        return CustomColor.purple;
      case 'red':
        return CustomColor.red;
      case 'yellow':
        return CustomColor.yellow;
      case 'blue':
        return CustomColor.blue;
      case 'green':
        return CustomColor.green;
      case 'orange':
        return CustomColor.orange;
      case 'white':
        return CustomColor.white;
      case 'off_white':
        return CustomColor.offWhite;
      case 'charcoal':
        return CustomColor.charcoal;
      case 'silver':
        return CustomColor.silver;
      case 'gold':
        return CustomColor.gold;
      case 'multi_color':
        return CustomColor.multi;
      case 'khaki':
        return CustomColor.khaki;
      case 'turquoise':
        return CustomColor.turquoise;
      case 'cream':
        return CustomColor.cream;
      case 'apricot':
        return CustomColor.apricot;
      case 'coral':
        return CustomColor.coral;
      case 'burgundy':
        return CustomColor.burgundy;
      case 'rose':
        return CustomColor.rose;
      case 'lilac':
        return CustomColor.lilac;
      case 'blue_light':
        return CustomColor.lightBlue;
      case 'navy':
        return CustomColor.navy;
      case 'green_dark':
        return CustomColor.darkGreen;
      case 'mustard':
        return CustomColor.mustard;
      case 'tan':
        return CustomColor.tan;
      case 'other':
        return CustomColor.other;
      default:
        return CustomColor.other;
    }
  }
}
