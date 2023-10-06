import '../../../../../enums/listings/custom_age.dart';

class PetEntity {
  PetEntity({
    required this.age,
    required this.readyToLeave,
  });

  CustomTime age;
  CustomTime readyToLeave;
}
