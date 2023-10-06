import '../../../../enums/attachment_type.dart';
import '../entities/attachment_entity.dart';

class AttachmentModel extends AttachmentEntity {
  AttachmentModel({
    required String url,
    required int index,
    required AttachmentType type,
    required DateTime timestamp,
    required String attachmentID,
    required String storagePath,
    required String postedBy,
    required DateTime? canDeleteOn,
    required String? localStoragePath,
    required bool isLive,
    required bool hasError,
    required String? filePath,
    required bool isDownloaded,
  }) : super(
          url: url,
          index: index,
          type: type,
          timestamp: timestamp,
          attachmentID: attachmentID,
          storagePath: storagePath,
          postedBy: postedBy,
          canDeleteOn: canDeleteOn,
          localStoragePath: localStoragePath,
          isLive: isLive,
          hasError: hasError,
          filePath: filePath,
          isDownloaded: isDownloaded,
        );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'url': url,
      'index': index,
      'type': type.json,
      'posted_by': postedBy,
      'timestamp': timestamp,
      'attachment_id': attachmentID,
      'storage_path': storagePath,
      'can_delete_on': canDeleteOn,
      'local_storage_path': localStoragePath,
      'is_live': true,
      'has_error': false,
      'file_path': filePath,
      'is_downloaded': isDownloaded,
    };
  }

  // ignore: sort_constructors_first
  factory AttachmentModel.fromEntity(AttachmentEntity entity) {
    return AttachmentModel(
      url: entity.url,
      index: entity.index,
      type: entity.type,
      timestamp: entity.timestamp,
      attachmentID: entity.attachmentID,
      storagePath: entity.storagePath,
      postedBy: entity.postedBy,
      canDeleteOn: entity.canDeleteOn,
      localStoragePath: entity.localStoragePath,
      isLive: entity.isLive,
      hasError: entity.hasError,
      filePath: entity.filePath,
      isDownloaded: entity.isDownloaded,
    );
  }
  // ignore: sort_constructors_first
  factory AttachmentModel.fromMap(Map<String, dynamic> map) {
    return AttachmentModel(
      url: map['url'] ?? '',
      index: map['index'] ?? 0,
      type: AttachmentTypeConvertor()
          .toEnum(map['type'] ?? AttachmentType.other.json),
      postedBy: map['posted_by'] ?? '',
      timestamp: DateTime.parse(map['timestamp'] ?? 0),
      attachmentID: map['attachment_id'] ?? '',
      storagePath: map['storage_path'] ?? '',
      canDeleteOn: map['can_delete_on'] != null
          ? DateTime.parse(map['can_delete_on'] ?? '0')
          : null,
      localStoragePath: map['local_storage_path'] ?? '',
      isLive: map['is_live'] ?? true,
      hasError: map['has_error'] ?? false,
      filePath: map['file_path'] != null ? map['file_path'] as String : null,
      isDownloaded: map['is_downloaded'] ?? true,
    );
  }
}
