import '../../domain/entities/category_fetcher_entity.dart';
import 'fetcher_value_model.dart';

class CategoryFeatureModel extends CategoryFeatureEntity {
  CategoryFeatureModel({
    required String id,
    required String displayName,
    required List<FetcherValueModel> values,
    String subtitle = '',
    bool isMultiChoice = true,
    bool isRequire = true,
    bool status = true,
  }) : super(
          id: id,
          displayName: displayName,
          subtitle: subtitle,
          values: values,
          isRequire: isRequire,
          isMultiChoice: isMultiChoice,
          status: status,
        );

  // ignore: sort_constructors_first
  factory CategoryFeatureModel.fromMap(Map<String, dynamic> map) {
    return CategoryFeatureModel(
      id: map['id'] ?? 'null',
      displayName: map['display_name'] ?? 'null',
      subtitle: map['subtitle'] ?? 'null',
      values: List<FetcherValueModel>.from(
        (map['values'] as List<dynamic>).map<FetcherValueModel>(
          (dynamic x) => FetcherValueModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
      isRequire: map['is_require'] ?? true,
      isMultiChoice: map['is_multi_choice'] ?? true,
      status: map['status'] ?? true,
    );
  }
}
