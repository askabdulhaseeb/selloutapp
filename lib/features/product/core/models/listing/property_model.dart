import '../../../../../enums/listings/custom_energey_rate.dart';
import '../../../../../enums/listings/properties.dart';
import '../../../../../enums/listings/tenure_type.dart';
import '../../entities/listing/property_entity.dart';

class PropertyModel extends PropertyEntity {
  PropertyModel({
    required bool isForSale,
    required Properties? property,
    required int bedrooms,
    required int bathrooms,
    required bool hasGarden,
    required bool hasParking,
    required bool isAnimalFriendly,
    required DateTime? dateAvailable,
    required TenureType tenureType,
    required CustomEnergyRate? energyRate,
  }) : super(
          isForSale: isForSale,
          property: property ?? Properties.others,
          bedrooms: bedrooms,
          bathrooms: bathrooms,
          hasGarden: hasGarden,
          hasParking: hasParking,
          isAnimalFriendly: isAnimalFriendly,
          dateAvailable: dateAvailable,
          tenureType: tenureType,
          energyRate: energyRate ?? CustomEnergyRate.k1to20,
        );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'is_for_sale': isForSale,
      'property': property.json,
      'bedrooms': bedrooms,
      'bathrooms': bathrooms,
      'has_garden': hasGarden,
      'has_parking': hasParking,
      'is_animal_friendly': isAnimalFriendly,
      'date_available': dateAvailable?.millisecondsSinceEpoch ??
          DateTime.now().add(const Duration(days: 30)).millisecondsSinceEpoch,
      'tenure_type': tenureType.json,
      'energy_rate': energyRate.json,
    };
  }

  // ignore: sort_constructors_first
  factory PropertyModel.fromMap(Map<String, dynamic> map) {
    return PropertyModel(
      isForSale: map['is_for_sale'] as bool,
      property:
          PropertiesFun.fromMap(map['property'] ?? Properties.others.json),
      bedrooms: map['bedrooms'] ?? 0,
      bathrooms: map['bathrooms'] ?? 0,
      hasGarden: map['has_garden'] ?? true,
      hasParking: map['has_parking'] ?? true,
      isAnimalFriendly: map['is_animal_friendly'] ?? true,
      dateAvailable:
          DateTime.fromMillisecondsSinceEpoch(map['date_available'] ?? 0),
      tenureType:
          TenureTypeFun.fromMap(map['tenure_type'] ?? TenureType.freehold),
      energyRate: CustomEnergyRateFun.fromMap(
          map['energy_rate'] ?? CustomEnergyRate.k1to20.json),
    );
  }
}
