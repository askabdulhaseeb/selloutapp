import '../../../../../core/functions/unique_id_fun.dart';
import '../../../../../enums/listings/list_type.dart';
import '../../../../auth/core/local_source/local_auth.dart';

class ProdListingModel {
  ProdListingModel({
    required this.title,
    required this.listIconURL,
    required this.position,
    required this.maxAttachments,
    ListType? type,
    String? listID,
    String? createdBy,
    DateTime? timestamp,
    bool? isActive,
  })  : listID = listID ?? UniqueIdFun.listingID(title),
        createdBy = createdBy ?? LocalAuth.uid,
        timestamp = timestamp ?? DateTime.now(),
        type = type ?? ListType.item,
        isActive = isActive ?? true;

  final String listID;
  String title;
  int position;
  final double maxAttachments;
  final ListType type;
  final String listIconURL;
  final String createdBy;
  final DateTime timestamp;
  bool isActive;

  // ignore: sort_constructors_first
  factory ProdListingModel.fromDoc(Map<String, dynamic> map) {
    return ProdListingModel(
      listID: map['list_id'] ?? '',
      title: map['title'] ?? '',
      position: map['position'] ?? 0,
      listIconURL: map['icon_url'] ?? '',
      createdBy: map['created_by'] ?? '',
      timestamp: DateTime.parse(map['timestamp'] ?? '0'),
      isActive: map['is_active'] ?? true,
      maxAttachments: 10,
    );
  }

  @override
  String toString() => 'Title: $title, Type:${type.index}';
}
