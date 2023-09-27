enum MessageTypeEnum {
  text('Text', 'text'),
  image('Image', 'image'),
  audio('Audio', 'audio'),
  video('Video', 'video'),
  prodOffer('Product Offer', 'prod_offer'),
  document('Document', 'document'),
  announcement('Announcement', 'announcement'),
  storyReply('Story Reply', 'story_reply');

  const MessageTypeEnum(this.title, this.json);
  final String title;
  final String json;
}

class MessageTypeEnumConvertor {
  MessageTypeEnum toEnum(String type) {
    if (type == 'text') {
      return MessageTypeEnum.text;
    } else if (type == 'image') {
      return MessageTypeEnum.image;
    } else if (type == 'audio') {
      return MessageTypeEnum.audio;
    } else if (type == 'video') {
      return MessageTypeEnum.video;
    } else if (type == 'document') {
      return MessageTypeEnum.document;
    } else if (type == 'announcement') {
      return MessageTypeEnum.announcement;
    } else if (type == 'prod_offer') {
      return MessageTypeEnum.prodOffer;
    } else {
      return MessageTypeEnum.storyReply;
    }
  }
}
