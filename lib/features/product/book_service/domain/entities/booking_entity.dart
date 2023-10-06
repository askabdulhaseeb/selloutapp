import '../../../../auth/core/local_source/local_auth.dart';

class BookingEntity {
  BookingEntity({
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
}
