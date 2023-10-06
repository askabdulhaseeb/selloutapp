import '../../../../enums/listings/prod_delivery_type.dart';
import '../entities/product_order_entity.dart';

class ProdOrderModel extends ProdOrderEntity {
  ProdOrderModel({
    required String uid,
    required double price,
    required ProdDeliveryTypeEnum deliveryType,
    required DateTime orderTime,
    required DateTime approvalTime,
  }) : super(
          uid: uid,
          price: price,
          deliveryType: deliveryType,
          orderTime: orderTime,
          approvalTime: approvalTime,
        );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uid': uid,
      'price': price,
      'delivery_type': deliveryType.json,
      'order_time': orderTime,
      'approval_time': approvalTime,
    };
  }

  // ignore: sort_constructors_first
  factory ProdOrderModel.fromMap(Map<String, dynamic> map) {
    return ProdOrderModel(
      uid: map['uid'] as String,
      price: map['price'] as double,
      deliveryType: ProdDeliveryTypeEnumConvertor()
          .toEnum(map['delivery_type'] ?? 'delivery'),
      orderTime: DateTime.parse(map['order_time'] ?? '0'),
      approvalTime: DateTime.parse(map['approval_time'] ?? '0'),
    );
  }
}
