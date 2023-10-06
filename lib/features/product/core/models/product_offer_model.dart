import '../../../../enums/listings/prod_delivery_type.dart';
import '../../../../enums/listings/prod_offer_status.dart';
import '../entities/product_offer_entity.dart';

class ProdOfferModel extends ProdOfferEntity {
  ProdOfferModel({
    required String uid,
    required String offerID,
    required String chatId,
    required double price,
    required ProdDeliveryTypeEnum deliveryType,
    required DateTime orderTime,
    required DateTime responseTime,
    required ProdOfferStatusEnum status,
  }) : super(
          uid: uid,
          offerID: offerID,
          chatId: chatId,
          price: price,
          deliveryType: deliveryType,
          orderTime: orderTime,
          responseTime: responseTime,
          status: status,
        );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uid': uid,
      'offer_id': offerID,
      'chat_id': chatId,
      'price': price + 0.0,
      'delivery_type': deliveryType.json,
      'order_time': orderTime,
      'response_time': responseTime,
      'status': status.json,
    };
  }

  // ignore: sort_constructors_first
  factory ProdOfferModel.fromMap(Map<String, dynamic> map) {
    return ProdOfferModel(
      uid: map['uid'] ?? '',
      offerID: map['offer_id'] ??
          map['uid'] + map['price'].toString() + map['order_time'].toString(),
      chatId: map['chat_id'] ?? '',
      price: map['price'] + 0.0,
      deliveryType: ProdDeliveryTypeEnumConvertor()
          .toEnum(map['delivery_type'] ?? ProdDeliveryTypeEnum.delivery.json),
      orderTime: map['order_time'] ?? 0,
      responseTime: map['response_time'] ?? 0,
      status: ProdOfferStatusEnumConvertor()
          .fromMap(map['status'] ?? ProdOfferStatusEnum.pending.json),
    );
  }
}
