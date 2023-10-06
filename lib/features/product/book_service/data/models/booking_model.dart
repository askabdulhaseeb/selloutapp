import '../../../../auth/core/local_source/local_auth.dart';

class BookingModel {
  BookingModel({
    required this.serviceID,
    required this.time,
    required this.durationInMinutes,
    required this.amount,
    String? bookBy,
    String? bookingID,
    DateTime? timestamp,
    this.isAmountPending = false,
  })  : bookingID =
            bookingID ?? DateTime.now().millisecondsSinceEpoch.toString(),
        timestamp = timestamp ?? DateTime.now(),
        bookBy = bookBy ?? LocalAuth.uid;

  final String bookingID;
  final String serviceID;
  final DateTime time;
  final String bookBy;
  final int durationInMinutes;
  final double amount;
  final bool isAmountPending;
  final DateTime timestamp;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'booking_id': bookingID,
      'service_id': serviceID,
      'time': time.millisecondsSinceEpoch,
      'book_by': bookBy,
      'duration_in_minuts': durationInMinutes,
      'amount': amount,
      'is_amount_pending': isAmountPending,
      'timestamp': timestamp.millisecondsSinceEpoch,
    };
  }

  // ignore: sort_constructors_first
  factory BookingModel.fromMap(Map<String, dynamic> map) {
    return BookingModel(
      bookingID: map['booking_id'] ?? '',
      serviceID: map['service_id'] ?? '',
      time: DateTime.fromMillisecondsSinceEpoch(map['time'] ?? 0),
      bookBy: map['book_by'] ?? '',
      durationInMinutes: map['duration_in_minuts'] ?? 0,
      amount: map['amount'] ?? 0.0,
      isAmountPending: map['is_amount_pending'] ?? true,
      timestamp: DateTime.fromMillisecondsSinceEpoch(map['timestamp'] ?? 0),
    );
  }
}
