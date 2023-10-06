import '../../../../../enums/listings/day.dart';

class RoutineEntity {
  RoutineEntity({
    required this.day,
    this.staringHour = 9,
    this.staringMinute = 0,
    this.endingHour = 17,
    this.endingMinute = 0,
  });

  final Day day;
  int staringHour;
  int staringMinute;
  int endingHour;
  int endingMinute;

  @override
  String toString() =>
      '${day.short} - $staringHour:$staringMinute , $endingHour:$endingMinute';
}
