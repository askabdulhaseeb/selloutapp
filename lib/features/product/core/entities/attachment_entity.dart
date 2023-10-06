import '../../../../enums/attachment_type.dart';
import '../../../auth/core/local_source/local_auth.dart';

class AttachmentEntity {
  AttachmentEntity({
    required this.url,
    required this.index,
    required this.type,
    required this.storagePath,
    String? attachmentID,
    String? postedBy,
    DateTime? timestamp,
    DateTime? canDeleteOn,
    this.localStoragePath = '',
    this.isLive = true,
    this.hasError = false,
    this.filePath,
    this.isDownloaded = true,
  })  : timestamp = timestamp ?? DateTime.now(),
        canDeleteOn =
            canDeleteOn ?? DateTime.now().add(const Duration(days: 30)),
        postedBy = postedBy ?? LocalAuth.uid,
        attachmentID = attachmentID ??
            (storagePath.contains('/')
                ? storagePath.split('/').last
                : DateTime.now().millisecondsSinceEpoch.toString());

  String url;
  int index;
  AttachmentType type;
  final DateTime timestamp;
  String attachmentID;
  final String storagePath;
  String postedBy;
  DateTime? canDeleteOn;
  String? localStoragePath;
  bool isLive;
  bool hasError;
  String? filePath;
  bool isDownloaded;
}
