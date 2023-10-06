import '../../../../enums/order_status.dart';
import 'cart_product_entity.dart';

class CartEntity {
  CartEntity({
    required this.cartID,
    required this.items,
    required this.totalQty,
    required this.totalAmount,
    required this.orderStatus,
    required this.orderStartingDate,
    required this.orderEndingDate,
  });

  final String cartID;
  final List<CartProductEntity> items;
  final double totalQty;
  final double totalAmount;
  final OrderStatus orderStatus;
  final int orderStartingDate;
  final int orderEndingDate;
}
