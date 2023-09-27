// ignore_for_file: constant_identifier_names
enum ProdConditionEnum {
  newC('New', 'new'),
  used('Used', 'used');

  const ProdConditionEnum(this.title, this.json);
  final String title;
  final String json;
}

class ProdConditionEnumConvertor {
  ProdConditionEnum toEnum(String condition) {
    if (condition.toLowerCase() == 'new') {
      return ProdConditionEnum.newC;
    } else {
      return ProdConditionEnum.used;
    }
  }
}
