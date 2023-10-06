import '../../../../../enums/listings/custom_energey_rate.dart';
import '../../../../../enums/listings/properties.dart';
import '../../../../../enums/listings/tenure_type.dart';

class PropertyEntity {
  PropertyEntity({
    required this.bedrooms,
    required this.bathrooms,
    required this.hasGarden,
    required this.hasParking,
    required this.isAnimalFriendly,
    required this.dateAvailable,
    required this.tenureType,
    required this.property,
    required this.energyRate,
    this.isForSale = false,
  });

  bool isForSale;
  Properties property;
  int bedrooms;
  int bathrooms;
  bool hasGarden;
  bool hasParking;
  bool isAnimalFriendly;
  DateTime? dateAvailable;
  TenureType tenureType;
  CustomEnergyRate energyRate;
}
