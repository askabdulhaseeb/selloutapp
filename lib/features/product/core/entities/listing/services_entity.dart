import '../../../../../enums/listings/custom_discount.dart';
import '../../../book_service/data/models/booking_model.dart';
import '../../../book_service/data/models/routine_model.dart';

class ServicesEntity {
  ServicesEntity({
    required this.durationInMints,
    required this.isDepositRequired,
    required this.depositAmount,
    required this.routine,
    required this.discount,
    List<BookingModel>? bookings,
  }) : bookings = bookings ?? <BookingModel>[];

  int durationInMints;
  List<RoutineModel> routine;
  CustomDiscount discount;
  bool isDepositRequired;
  double depositAmount;
  final List<BookingModel> bookings;
}
