import 'fetcher_value_entity.dart';

class CategoryFeatureEntity {
  CategoryFeatureEntity({
    required this.id,
    required this.displayName,
    required this.values,
    this.subtitle = '',
    this.isRequire = true,
    this.isMultiChoice = true,
    this.status = true,
  });

  final String id;
  String displayName;
  String subtitle;
  final List<FetcherValueEntity> values;
  bool isRequire;
  bool isMultiChoice;
  bool status;
}
