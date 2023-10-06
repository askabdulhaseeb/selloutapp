import '../../../../../enums/listings/day.dart';

class RoutineModel {
  RoutineModel({
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

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'day': day.json,
      'staring_hour': staringHour,
      'staring_minute': staringMinute,
      'ending_hour': endingHour,
      'ending_minute': endingMinute,
    };
  }

  // ignore: sort_constructors_first
  factory RoutineModel.fromMap(Map<String, dynamic> map) {
    return RoutineModel(
      day: DayFun.fromMap(map['day'] ?? Day.sunday.json),
      staringHour: map['staring_hour'] ?? 0,
      staringMinute: map['staring_minute'] ?? 0,
      endingHour: map['ending_hour'] ?? 0,
      endingMinute: map['ending_minute'] ?? 0,
    );
  }
  @override
  String toString() =>
      '${day.short} - $staringHour:$staringMinute , $endingHour:$endingMinute';
}
