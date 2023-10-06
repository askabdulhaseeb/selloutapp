import '../../../../enums/order_status.dart';
import '../entities/cart_entity.dart';
import '../entities/cart_product_entity.dart';
import 'cart_product_model.dart';

class CartModel extends CartEntity {
  CartModel({
    required String cartID,
    required List<CartProductModel> items,
    required double totalQty,
    required double totalAmount,
    required OrderStatus orderStatus,
    required int orderStartingDate,
    required int orderEndingDate,
  }) : super(
          cartID: cartID,
          items: items,
          totalQty: totalQty,
          totalAmount: totalAmount,
          orderStatus: orderStatus,
          orderStartingDate: orderStartingDate,
          orderEndingDate: orderEndingDate,
        );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cart_id': cartID,
      'items': items.map((CartProductEntity x) {
        final CartProductModel temp = CartProductModel.fromEntity(x);
        return temp.toMap();
      }).toList(),
      'total_qty': totalQty,
      'total_amount': totalAmount,
      'order_status': orderStatus.json,
      'order_starting_date': orderStartingDate,
      'order_ending_date': orderEndingDate,
    };
  }

  // ignore: sort_constructors_first
  factory CartModel.fromMap(Map<String, dynamic> mapp) {
    final List<dynamic> itemsMap = mapp['items'] ?? <dynamic>[];
    final List<CartProductModel> cartProd = <CartProductModel>[];
    for (dynamic element in itemsMap) {
      cartProd.add(CartProductModel.fromMap(element));
    }
    return CartModel(
      cartID: mapp['cart_id'] ?? '',
      items: cartProd,
      totalQty: mapp['total_qty'] ?? 0,
      totalAmount: mapp['total_amount'] ?? 0,
      orderStatus: OrderStatusConvertor()
          .toEnum(mapp['order_status'] ?? OrderStatus.pending.json),
      orderStartingDate: mapp['order_starting_date'] ?? 0,
      orderEndingDate: mapp['order_ending_date'] ?? 0,
    );
  }
}
