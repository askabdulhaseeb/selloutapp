enum NotificationType {
  message('message', 'Message'),
  order('order', 'Order'),
  offer('offer', 'Offer'),
  request('request', 'Request');

  const NotificationType(this.json, this.title);
  final String json;
  final String title;
}

class NotificationTypeConvertor {
  static NotificationType toEnum(String type) {
    switch (type) {
      case 'message':
        return NotificationType.message;
      case 'order':
        return NotificationType.order;
      case 'offer':
        return NotificationType.offer;
      case 'request':
        return NotificationType.request;
      default:
        return NotificationType.message;
    }
  }
}
