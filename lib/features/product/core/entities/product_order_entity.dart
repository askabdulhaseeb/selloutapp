import '../../../../enums/listings/prod_delivery_type.dart';

class ProdOrderEntity {
  ProdOrderEntity({
    required this.uid,
    required this.price,
    required this.deliveryType,
    required this.orderTime,
    required this.approvalTime,
  });

  final String uid;
  final double price;
  final ProdDeliveryTypeEnum deliveryType;
  final DateTime orderTime;
  final DateTime approvalTime;
}
