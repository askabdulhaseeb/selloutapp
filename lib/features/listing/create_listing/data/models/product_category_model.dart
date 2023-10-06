import '../../../../../core/functions/unique_id_fun.dart';
import '../../domain/entities/product_category_entity.dart';
import 'category_fetcher_model.dart';

class ProductCategoryModel extends ProductCategoryEntity {
  ProductCategoryModel({
    required String listID,
    required String? backID,
    required String fullPath,
    required String title,
    required String iconURL,
    required bool isActive,
    required List<ProductCategoryModel> subCategories,
    required List<CategoryFeatureModel> fetchers,
    String? catID,
    DateTime? lastUpdate,
  }) : super(
          catID: catID ?? UniqueIdFun.categoryID(title),
          listID: listID,
          backID: backID,
          fullPath: fullPath,
          title: title,
          iconURL: iconURL,
          isActive: isActive,
          subCategories: subCategories,
          fetchers: fetchers,
          lastUpdate: lastUpdate ?? DateTime.now(),
        );

  // ignore: sort_constructors_first
  factory ProductCategoryModel.fromMap(Map<String, dynamic> map) {
    List<ProductCategoryModel> subCats = <ProductCategoryModel>[];
    List<CategoryFeatureModel> catFet = <CategoryFeatureModel>[];
    final List<dynamic> data = map['sub_categories'] ?? <dynamic>[];
    final List<dynamic> fetData = map['fetchers'] ?? <dynamic>[];
    for (dynamic element in data) {
      subCats.add(ProductCategoryModel.fromMap(element));
    }
    for (dynamic element in fetData) {
      catFet.add(CategoryFeatureModel.fromMap(element));
    }
    return ProductCategoryModel(
      catID: map['cat_id']?.toString().trim() ?? '',
      listID: map['list_id']?.toString().trim() ?? '',
      title: map['title']?.toString().trim() ?? '',
      backID: map['back_id']?.toString().trim() ?? '',
      fullPath: map['full_path']?.toString().trim() ?? '',
      iconURL: map['icon_url']?.toString().trim() ?? '',
      lastUpdate: DateTime.parse(map['last_update'] ?? '0'),
      isActive: map['is_active'] ?? true,
      subCategories: subCats,
      fetchers: catFet,
    );
  }
}
