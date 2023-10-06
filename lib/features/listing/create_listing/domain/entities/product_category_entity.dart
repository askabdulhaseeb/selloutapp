import 'category_fetcher_entity.dart';

class ProductCategoryEntity {
  ProductCategoryEntity({
    required this.listID,
    required this.title,
    required this.subCategories,
    required this.fullPath,
    required this.fetchers,
    required this.catID,
    required this.backID,
    required this.iconURL,
    required this.isActive,
    required this.lastUpdate,
  });

  final String catID;
  final String listID;
  final String? backID;
  final String fullPath;
  final String title;
  final String iconURL;
  final bool isActive;
  final List<ProductCategoryEntity> subCategories;
  final List<CategoryFeatureEntity> fetchers;
  final DateTime? lastUpdate;
}
