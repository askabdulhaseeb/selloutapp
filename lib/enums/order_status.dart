enum OrderStatus {
  pending('pending', 'Pending'),
  cancel('cancel', 'Cancel'),
  complete('complete', 'Complete'),
  dispute('dispute', 'dispute');

  const OrderStatus(this.json, this.title);
  final String json;
  final String title;
}

class OrderStatusConvertor {
  OrderStatus toEnum(String type) {
    if (OrderStatus.pending.json == type) {
      return OrderStatus.pending;
    } else if (OrderStatus.cancel.json == type) {
      return OrderStatus.cancel;
    } else if (OrderStatus.complete.json == type) {
      return OrderStatus.complete;
    } else if (OrderStatus.dispute.json == type) {
      return OrderStatus.dispute;
    }
    return OrderStatus.cancel;
  }
}
