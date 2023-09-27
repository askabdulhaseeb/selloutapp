enum ProdPrivacyTypeEnum {
  public('Public', 'public'),
  supporters('Supporters', 'supporters'),
  private('Private', 'private');

  const ProdPrivacyTypeEnum(this.title, this.json);
  final String title;
  final String json;
}

class ProdPrivacyTypeEnumConvertor {
  ProdPrivacyTypeEnum toEnum(String privacy) {
    if (privacy.toLowerCase() == 'public') {
      return ProdPrivacyTypeEnum.public;
    } else if (privacy.toLowerCase() == 'supporters' ||
        privacy.toLowerCase() == 'supporters only') {
      return ProdPrivacyTypeEnum.supporters;
    } else {
      return ProdPrivacyTypeEnum.private;
    }
  }
}
