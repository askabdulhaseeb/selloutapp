import '../../entities/listing/cloth_and_food_entity.dart';

class ClothAndFootModel extends ClothAndFootEntity {
  ClothAndFootModel({
    required String sizeID,
    required String colorID,
    required int quantity,
  }) : super(
          sizeID: sizeID,
          colorID: colorID,
          quantity: quantity,
        );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'size_id': sizeID,
      'color_id': colorID,
      'quantity': quantity,
    };
  }

  // ignore: sort_constructors_first
  factory ClothAndFootModel.fromMap(Map<String, dynamic> map) {
    return ClothAndFootModel(
      sizeID: map['size_id'] ?? '',
      colorID: map['color_id'] ?? '',
      quantity: map['quantity'] ?? 0,
    );
  }
}
