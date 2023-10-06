import '../../../../enums/listings/list_type.dart';
import '../../../../enums/listings/prod_condition_enum.dart';
import '../../../../enums/listings/prod_delivery_type.dart';
import '../../../../enums/listings/prod_privacy_type.dart';
import '../../../../enums/listings/prod_property_type.dart';
import '../../../auth/core/local_source/local_auth.dart';
import '../../report/data/models/report_product_model.dart';
import '../entities/product_entity.dart';
import 'attachment_model.dart';
import 'listing/cloth_and_food_model.dart';
import 'listing/pet_model.dart';
import 'listing/property_model.dart';
import 'listing/services_model.dart';
import 'listing/vehicle_model.dart';
import 'product_offer_model.dart';
import 'product_order_model.dart';
import 'product_share_with_model.dart';

class ProductModel extends ProductEntity {
  ProductModel({
    required String pid,
    required String title,
    required String listID,
    required List<AttachmentModel> prodURL,
    required ProdConditionEnum condition,
    required String description,
    required String category,
    required List<String> categoryPaths,
    // required this.subCategories,
    required double price,
    required dynamic listInfo,
    String? uid,
    String currency = 'USD',
    String location = '',
    int quantity = 1,
    List<ProductPropertyType>? properties,
    bool acceptOffers = true,
    double offerLimit = 0.0,
    ProdPrivacyTypeEnum privacy = ProdPrivacyTypeEnum.public,
    String accessCode = '0000',
    List<ProdSharedWithModel>? shareWith,
    ProdDeliveryTypeEnum delivery = ProdDeliveryTypeEnum.delivery,
    double deliveryFree = 0,
    List<ProdOrderModel>? orders,
    List<ProdOfferModel>? offers,
    List<ReportProductModel>? reports,
    DateTime? timestamp,
    bool isAvailable = true,
  }) : super(
          pid: pid,
          uid: uid ?? LocalAuth.uid,
          listID: listID,
          title: title,
          prodURL: prodURL,
          condition: condition,
          description: description,
          category: category,
          categoryPaths: categoryPaths,
          price: price,
          currency: currency,
          location: location,
          quantity: quantity,
          properties: properties ?? <ProductPropertyType>[],
          acceptOffers: acceptOffers,
          offerLimit: offerLimit,
          privacy: privacy,
          accessCode: accessCode,
          shareWith: shareWith ?? <ProdSharedWithModel>[],
          delivery: delivery,
          deliveryFree: deliveryFree,
          orders: orders ?? <ProdOrderModel>[],
          offers: offers ?? <ProdOfferModel>[],
          reports: reports ?? <ReportProductModel>[],
          timestamp: timestamp ?? DateTime.now(),
          isAvailable: isAvailable,
          listInfo: listInfo,
        );

  // Map<String, dynamic> toMap() {
  //   if (shareWith.isEmpty) {
  //     shareWith.add(ProdSharedWithModel(
  //       uid: uid,
  //       isApproved: true,
  //       requestTime: DateTime.now(),
  //       responceTime: DateTime.now(),
  //     ));
  //   }
  //   return <String, dynamic>{
  //     'pid': pid,
  //     'uid': uid,
  //     'list_id': listID,
  //     'title': title,
  //     'prod_urls': prodURL.map((AttachmentModel e) => e.toMap()).toList(),
  //     'condition': condition.json,
  //     'description': description,
  //     'category': category,
  //     'categories_paths': categoryPaths,
  //     // 'sub_categories': subCategories,
  //     'price': price,
  //     'access_code': accessCode,
  //     'share_with':
  //         shareWith.map((ProdSharedWithModel e) => e.toMap()).toList(),
  //     'currency': currency,
  //     'quantity': quantity,
  //     'properties': ProductPropertyTypeConvertor().toStringList(properties),
  //     'accept_offers': acceptOffers,
  //     'privacy': privacy.json,
  //     'delivery': delivery.json,
  //     'delivery_free': deliveryFree,
  //     'mini_offer_limit': offerLimit,
  //     'orders': orders,
  //     'offers': offers,
  //     'reports': <ReportProductModel>[],
  //     'timestamp': timestamp,
  //     'is_available': isAvailable,
  //     'list_info': _listInfo(),
  //   };
  // }

  // Map<String, dynamic>? report() {
  //   return <String, dynamic>{
  //     'reports': FieldValue.arrayUnion(
  //         reports.map((ReportProductModel e) => e.toMap()).toList()),
  //   };
  // }

  // Map<String, dynamic> sendOrder() {
  //   return <String, dynamic>{
  //     'orders': FieldValue.arrayUnion(
  //         orders.map((ProdOrderModel e) => e.toMap()).toList()),
  //   };
  // }

  // Map<String, dynamic> sendOffer() {
  //   return <String, dynamic>{
  //     'offers': FieldValue.arrayUnion(
  //         offers.map((ProdOfferModel e) => e.toMap()).toList()),
  //   };
  // }

  // Map<String, dynamic> updateOffer() {
  //   return <String, dynamic>{
  //     'offers': offers.map((ProdOfferModel e) => e.toMap()).toList(),
  //   };
  // }

  Map<String, dynamic> update() {
    return <String, dynamic>{
      'title': title,
      'description': description,
      'price': price,
      'quantity': quantity,
    };
  }

  Map<String, dynamic> updateListInfo() {
    return <String, dynamic>{'list_info': _listInfo()};
  }

  // ignore: sort_constructors_first
  factory ProductModel.fromDoc(Map<String, dynamic> json) {
    List<AttachmentModel> prodURL = <AttachmentModel>[];
    List<ProdOrderModel> prodOrders = <ProdOrderModel>[];
    List<ProdOfferModel> prodOffers = <ProdOfferModel>[];
    List<ProdSharedWithModel> prodShareWith = <ProdSharedWithModel>[];

    json['prod_urls'].forEach((dynamic e) {
      prodURL.add(AttachmentModel.fromMap(e));
    });
    List<ReportProductModel> reportInfo = <ReportProductModel>[];
    if (json['reports'] != null) {
      final List<dynamic> temp = json['reports'];
      for (dynamic e in temp) {
        reportInfo.add(ReportProductModel.fromMap(e));
      }
    }

    if (json['orders'] != null && ((json['uid'] ?? '') == LocalAuth.uid)) {
      final List<dynamic> temp = json['orders'];
      for (dynamic e in temp) {
        prodOrders.add(ProdOrderModel.fromMap(e));
      }
    }

    if (json['offers'] != null) {
      final List<dynamic> temp = json['offers'];
      for (dynamic e in temp) {
        prodOffers.add(ProdOfferModel.fromMap(e));
      }
    }

    if (json['share_with'] != null) {
      final List<dynamic> temp = json['share_with'];
      for (dynamic e in temp) {
        prodShareWith.add(ProdSharedWithModel.fromMap(e));
      }
    }

    return ProductModel(
      pid: json['pid'] ?? '',
      uid: json['uid'] ?? '',
      listID: json['list_id'] ?? '',
      title: json['title'] ?? '',
      prodURL: prodURL,
      condition: ProdConditionEnumConvertor()
          .toEnum(json['condition'] ?? ProdConditionEnum.newC.json),
      description: json['description'] ?? '',
      category: json['category'] ?? '',
      categoryPaths: List<String>.from(json['categories_paths'] ?? <String>[]),
      // subCategories:
      //     List<String>.from(json['sub_categories'] ?? <String>[]),
      price: double.parse(json['price']?.toString() ?? '0.0'),
      accessCode: json['access_code'] ?? '0000',
      shareWith: prodShareWith,
      currency: json['currency'] ?? 'USD',
      location: json['location'] ?? 'location not found',
      quantity: int.parse(json['quantity']?.toString() ?? '0'),
      properties: ProductPropertyTypeConvertor().toEnum(List<String>.from(
          json['properties'] ?? <String>[ProductPropertyType.simple.json])),
      offerLimit: double.parse(json['mini_offer_limit']?.toString() ?? '0.0'),
      acceptOffers: json['accept_offers'] ?? false,
      privacy: ProdPrivacyTypeEnumConvertor()
          .toEnum(json['privacy'] ?? ProdPrivacyTypeEnum.public.json),
      delivery: ProdDeliveryTypeEnumConvertor()
          .toEnum(json['delivery'] ?? ProdDeliveryTypeEnum.delivery.json),
      deliveryFree: double.parse(json['delivery_free']?.toString() ?? '0.0'),
      reports: reportInfo,
      orders: prodOrders,
      offers: prodOffers,
      timestamp: DateTime.parse(json['timestamp'] ?? '0'),
      isAvailable: json['is_available'] ?? false,
      listInfo: json['list_info'] ?? <String, dynamic>{},
    );
  }

  dynamic _listInfo() {
    if (listID == ListType.item.json) return <String, dynamic>{};
    if (listID == ListType.clothesAndFoot.json) {
      final List<ClothAndFootModel> clothAndFoot =
          listInfo as List<ClothAndFootModel>;
      return clothAndFoot.map((ClothAndFootModel e) => e.toMap()).toList();
    }
    if (listID == ListType.vehicles.json) {
      final VehicleModel vehicle = listInfo as VehicleModel;
      return vehicle.toMap();
    }
    if (listID == ListType.foodAndDrinks.json) return <String, dynamic>{};
    if (listID == ListType.properties.json) {
      final PropertyModel property = listInfo as PropertyModel;
      return property.toMap();
    }
    if (listID == ListType.services.json) {
      final ServicesModel services = listInfo as ServicesModel;
      return services.toMap();
    }
    if (listID == ListType.pet.json) {
      final PetModel pet = listInfo as PetModel;
      return pet.toMap();
    }
    return <String, dynamic>{};
  }
}
