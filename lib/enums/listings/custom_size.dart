enum CustomSize {
  one('one', 'One Size'),
  xxs('xxs', 'Double Extra Small'),
  xs('xs', 'Extra Small'),
  s('s', 'Small'),
  m('m', 'Medium'),
  l('l', 'Large'),
  xl('xl', 'Extra Large'),
  xxl('xxl', 'Double Extra Large'),
  xxxl('xxxl', 'Triple Extra Large'),
  xxxxl('xxxxl', 'Full Size'),
  other('other', 'Other');

  const CustomSize(this.sign, this.title);
  final String sign;
  final String title;
}

class CustomSizeFun {
  static List<CustomSize> get sizes => <CustomSize>[
        CustomSize.one,
        CustomSize.xxs,
        CustomSize.xs,
        CustomSize.s,
        CustomSize.m,
        CustomSize.l,
        CustomSize.xl,
        CustomSize.xxl,
        CustomSize.xxxl,
        CustomSize.xxxxl,
        CustomSize.other,
      ];
  static CustomSize fromMap(String value) {
    switch (value) {
      case 'one':
        return CustomSize.one;
      case 'xxs':
        return CustomSize.xxs;
      case 'xs':
        return CustomSize.xs;
      case 's':
        return CustomSize.s;
      case 'm':
        return CustomSize.m;
      case 'l':
        return CustomSize.l;
      case 'xl':
        return CustomSize.xl;
      case 'xxl':
        return CustomSize.xxl;
      case 'xxxl':
        return CustomSize.xxxl;
      case 'xxxxl':
        return CustomSize.xxxxl;
      case 'other':
        return CustomSize.other;
      default:
        return CustomSize.other;
    }
  }
}
