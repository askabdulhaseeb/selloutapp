import '../../../../enums/listings/prod_delivery_type.dart';
import '../../../../enums/listings/prod_offer_status.dart';

class ProdOfferEntity {
  ProdOfferEntity({
    required this.uid,
    required this.offerID,
    required this.chatId,
    required this.price,
    required this.deliveryType,
    required this.orderTime,
    required this.responseTime,
    required this.status,
  });

  final String uid;
  final String offerID;
  final String chatId;
  double price;
  final ProdDeliveryTypeEnum deliveryType;
  final int orderTime;
  int responseTime;
  ProdOfferStatusEnum status;
}
