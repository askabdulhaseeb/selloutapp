import '../../../../enums/listings/prod_condition_enum.dart';
import '../../../../enums/listings/prod_delivery_type.dart';
import '../../../../enums/listings/prod_privacy_type.dart';
import '../../../../enums/listings/prod_property_type.dart';
import '../../../auth/core/local_source/local_auth.dart';
import '../../report/domain/entities/report_product_entity.dart';
import 'attachment_entity.dart';
import 'product_offer_entity.dart';
import 'product_order_entity.dart';
import 'product_share_with_entity.dart';

class ProductEntity {
  ProductEntity({
    required this.pid,
    required this.title,
    required this.listID,
    required this.prodURL,
    required this.condition,
    required this.description,
    required this.category,
    required this.categoryPaths,
    // required this.subCategories,
    required this.price,
    required this.listInfo,
    String? uid,
    this.currency = 'USD',
    this.location,
    this.quantity = 1,
    List<ProductPropertyType>? properties,
    this.acceptOffers = true,
    this.offerLimit = 0.0,
    this.privacy = ProdPrivacyTypeEnum.public,
    this.accessCode = '0000',
    List<ProdSharedWithEntity>? shareWith,
    this.delivery = ProdDeliveryTypeEnum.delivery,
    this.deliveryFree = 0,
    List<ProdOrderEntity>? orders,
    List<ProdOfferEntity>? offers,
    List<ReportProductEntity>? reports,
    DateTime? timestamp,
    this.isAvailable = true,
  })  : uid = uid ?? LocalAuth.uid,
        properties = properties ?? <ProductPropertyType>[],
        orders = orders ?? <ProdOrderEntity>[],
        offers = offers ?? <ProdOfferEntity>[],
        shareWith = shareWith ?? <ProdSharedWithEntity>[],
        reports = reports ?? <ReportProductEntity>[],
        timestamp = timestamp ?? DateTime.now();

  final String pid;
  final String uid;
  final String listID;
  final String title;
  final List<AttachmentEntity> prodURL;
  final ProdConditionEnum condition;
  final String description;
  final String category;
  final List<String> categoryPaths;
  // final List<String> subCategories;
  final double price;
  final String currency;
  final String? location;
  final int quantity;
  final List<ProductPropertyType> properties;
  final bool acceptOffers;
  double offerLimit;
  final ProdPrivacyTypeEnum privacy;
  String accessCode;
  List<ProdSharedWithEntity> shareWith;
  final ProdDeliveryTypeEnum delivery;
  final double deliveryFree;
  final List<ProdOrderEntity> orders;
  final List<ProdOfferEntity> offers;
  final List<ReportProductEntity> reports;
  final DateTime timestamp;
  bool isAvailable; // available for sale any more are not
  dynamic listInfo;
}
