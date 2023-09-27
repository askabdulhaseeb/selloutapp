enum AttachmentType {
  photo('photo', 'Photo'),
  video('video', 'Video'),
  audio('audio', 'Audio'),
  document('document', 'Document'),
  other('other', 'Other');

  const AttachmentType(this.json, this.title);
  final String json;
  final String title;
}

class AttachmentTypeConvertor {
  AttachmentType toEnum(String type) {
    if (type == AttachmentType.photo.json) {
      return AttachmentType.photo;
    } else if (type == AttachmentType.video.json) {
      return AttachmentType.video;
    } else if (type == AttachmentType.audio.json) {
      return AttachmentType.audio;
    } else if (type == AttachmentType.document.json) {
      return AttachmentType.document;
    } else {
      return AttachmentType.other;
    }
  }
}