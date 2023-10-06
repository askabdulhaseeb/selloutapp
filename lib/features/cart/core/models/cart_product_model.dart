import '../entities/cart_product_entity.dart';

class CartProductModel extends CartProductEntity {
  CartProductModel({
    required String productID,
    required String sellerID,
    required String buyerID,
    required int qty,
    required double price,
    required String currency,
  }) : super(
          productID: productID,
          sellerID: sellerID,
          buyerID: buyerID,
          qty: qty,
          price: price,
          currency: currency,
        );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'product_id': productID,
      'seller_id': sellerID,
      'buyer_id': buyerID,
      'qty': qty,
      'price': price,
      'currency': currency,
    };
  }

  // ignore: sort_constructors_first
  factory CartProductModel.fromEntity(CartProductEntity entity) {
    return CartProductModel(
      productID: entity.productID,
      sellerID: entity.sellerID,
      buyerID: entity.buyerID,
      qty: entity.qty,
      price: entity.price,
      currency: entity.currency,
    );
  }
  // ignore: sort_constructors_first
  factory CartProductModel.fromMap(Map<String, dynamic> map) {
    return CartProductModel(
      productID: map['product_id'] ?? '',
      sellerID: map['seller_id'] ?? '',
      buyerID: map['buyer_id'] ?? '',
      qty: map['qty'] ?? 1,
      price: map['price'] ?? 0,
      currency: map['currency'] ?? 'USD',
    );
  }
}
