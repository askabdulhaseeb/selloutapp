import '../../../../../enums/listings/custom_color.dart';
import '../../../../../enums/listings/transmission_type.dart';
import '../../../../../enums/listings/vehicle_makers.dart';

class VehicleEntity {
  VehicleEntity({
    required this.model,
    required this.engineSize,
    required this.mileage,
    required this.transmissionType,
    required this.maker,
    required this.color,
    required this.year,
    this.isForSale = true,
  });

  bool isForSale;
  int year;
  VehicleMaker maker;
  String model;
  CustomColor color;
  TransmissionType transmissionType;
  String engineSize;
  String mileage;
}
