import '../../../auth/core/local_source/local_auth.dart';
import '../entities/product_share_with_entity.dart';

class ProdSharedWithModel extends ProdSharedWithEntity {
  ProdSharedWithModel({
    required String uid,
    required DateTime requestTime,
    required DateTime responceTime,
    required bool isApproved,
    bool isBlocked = false,
  }) : super(
          uid: uid,
          requestTime: requestTime,
          responceTime: responceTime,
          isApproved: isApproved,
          isBlocked: isBlocked,
        );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uid': uid,
      'request_time': requestTime.millisecondsSinceEpoch,
      'responce_time': responceTime.millisecondsSinceEpoch,
      'is_approved': uid == LocalAuth.uid ? true : isApproved,
      'is_blocked': uid == LocalAuth.uid ? false : isBlocked,
    };
  }

  // ignore: sort_constructors_first
  factory ProdSharedWithModel.fromEntity(ProdSharedWithEntity entity) {
    return ProdSharedWithModel(
      uid: entity.uid,
      requestTime: entity.requestTime,
      responceTime: entity.responceTime,
      isApproved: entity.isApproved,
      isBlocked: entity.isBlocked,
    );
  }
  // ignore: sort_constructors_first
  factory ProdSharedWithModel.fromMap(Map<String, dynamic> map) {
    return ProdSharedWithModel(
      uid: map['uid'] ?? '',
      requestTime: DateTime.parse(map['request_time'] ?? '0'),
      responceTime: DateTime.parse(map['responce_time'] ?? '0'),
      isApproved: map['is_approved'] ?? false,
      isBlocked: map['is_blocked'] ?? false,
    );
  }
}
