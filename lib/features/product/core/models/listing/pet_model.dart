import '../../../../../enums/listings/custom_age.dart';
import '../../entities/listing/pet_entity.dart';

class PetModel extends PetEntity {
  PetModel({
    required CustomTime age,
    required CustomTime readyToLeave,
  }) : super(age: age, readyToLeave: readyToLeave);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'age': age.json,
      'ready_to_leave': readyToLeave.json,
    };
  }

  // ignore: sort_constructors_first
  factory PetModel.fromMap(Map<String, dynamic> map) {
    return PetModel(
      age: CustomTimeFun.fromMap(map['age'] ?? CustomTime.others.json),
      readyToLeave: CustomTimeFun.fromMap(
          map['ready_to_leave'] ?? CustomTime.others.json),
    );
  }
}
