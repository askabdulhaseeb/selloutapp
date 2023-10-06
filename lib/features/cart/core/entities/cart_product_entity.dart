class CartProductEntity {
  CartProductEntity({
    required this.productID,
    required this.sellerID,
    required this.buyerID,
    required this.price,
    this.qty = 1,
    this.currency = 'USD',
  });

  final String productID;
  final String sellerID;
  final String buyerID;
  final int qty;
  final double price;
  final String currency;
}
