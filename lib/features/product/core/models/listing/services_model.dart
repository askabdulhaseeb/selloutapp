import '../../../../../enums/listings/custom_discount.dart';
import '../../../book_service/data/models/booking_model.dart';
import '../../../book_service/data/models/routine_model.dart';
import '../../entities/listing/services_entity.dart';

class ServicesModel extends ServicesEntity {
  ServicesModel({
    required int durationInMints,
    required List<RoutineModel> routine,
    required CustomDiscount discount,
    required bool isDepositRequired,
    required double depositAmount,
    required List<BookingModel> bookings,
  }) : super(
          durationInMints: durationInMints,
          routine: routine,
          discount: discount,
          isDepositRequired: isDepositRequired,
          depositAmount: depositAmount,
          bookings: bookings,
        );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'duration_in_minuts': durationInMints,
      'routine': routine.map((RoutineModel e) => e.toMap()).toList(),
      'discount': discount.number,
      'is_deposit_required': isDepositRequired,
      'deposit_amount': depositAmount,
      'bookings': bookings.map((BookingModel e) => e.toMap()).toList(),
    };
  }

  Map<String, dynamic> updateBookings() {
    return <String, dynamic>{
      'bookings': bookings.map((BookingModel e) => e.toMap()).toList(),
    };
  }

  // ignore: sort_constructors_first
  factory ServicesModel.fromMap(Map<String, dynamic> map) {
    return ServicesModel(
      durationInMints: map['duration_in_minuts'] ?? 0,
      routine: List<RoutineModel>.from(
        ((map['routine'] ?? <dynamic>[]) as List<dynamic>).map<RoutineModel>(
          (dynamic x) => RoutineModel.fromMap(x),
        ),
      ),
      discount: CustomDiscountFun.fromMap(
          map['discount'] ?? CustomDiscount.k0.number),
      isDepositRequired: map['is_deposit_required'] ?? false,
      depositAmount: map['deposit_amount'] ?? 0.0,
      bookings: List<BookingModel>.from(
        ((map['bookings'] ?? <dynamic>[]) as List<dynamic>).map<BookingModel>(
          (dynamic x) => BookingModel.fromMap(x),
        ),
      ),
    );
  }
}
