import '../../../../../enums/listings/custom_color.dart';
import '../../../../../enums/listings/transmission_type.dart';
import '../../../../../enums/listings/vehicle_makers.dart';
import '../../entities/listing/vehicle_entity.dart';

class VehicleModel extends VehicleEntity {
  VehicleModel({
    required bool isForSale,
    required int year,
    required VehicleMaker maker,
    required String model,
    required CustomColor color,
    required TransmissionType transmissionType,
    required String engineSize,
    required String mileage,
  }) : super(
          isForSale: isForSale,
          year: year,
          maker: maker,
          model: model,
          color: color,
          transmissionType: transmissionType,
          engineSize: engineSize,
          mileage: mileage,
        );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'is_for_sale': isForSale,
      'year': year,
      'maker': maker.json,
      'model': model,
      'color': color.json,
      'transmission_type': transmissionType.json,
      'engine_size': engineSize,
      'mileage': mileage,
    };
  }

  // ignore: sort_constructors_first
  factory VehicleModel.fromMap(Map<String, dynamic> map) {
    return VehicleModel(
      isForSale: map['is_for_sale'] ?? true,
      year: map['year'] ?? '1950',
      maker: map['maker'] ?? '',
      model: map['model'] ?? '',
      color: map['color'] ?? '',
      transmissionType: TransmissionTypeFun.fromMap(
          map['transmission_type'] ?? TransmissionType.manual.json),
      engineSize: map['engine_size'] ?? '',
      mileage: map['mileage'] ?? '',
    );
  }
}
