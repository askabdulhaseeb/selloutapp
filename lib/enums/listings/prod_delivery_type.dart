enum ProdDeliveryTypeEnum {
  delivery('Delivery', 'delivery'),
  collocation('Collection', 'collection'),
  both('Both', 'both');

  const ProdDeliveryTypeEnum(this.title, this.json);
  final String title;
  final String json;
}

class ProdDeliveryTypeEnumConvertor {
  ProdDeliveryTypeEnum toEnum(String delivery) {
    if (delivery.toLowerCase() == 'delivery') {
      return ProdDeliveryTypeEnum.delivery;
    } else if (delivery.toLowerCase() == 'collection') {
      return ProdDeliveryTypeEnum.collocation;
    } else {
      return ProdDeliveryTypeEnum.both;
    }
  }
}
