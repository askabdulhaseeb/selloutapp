enum StoryMediaType {
  image('image', 'Image'),
  text('text', 'Text'),
  video('video', 'Video');

  const StoryMediaType(this.json, this.title);

  final String json;
  final String title;
}

class StoryMediaTypeConvertor {
  StoryMediaType toEnum(String type) {
    if (StoryMediaType.image.json == type) {
      return StoryMediaType.image;
    } else if (StoryMediaType.text.json == type) {
      return StoryMediaType.text;
    } else if (StoryMediaType.video.json == type) {
      return StoryMediaType.video;
    } else {
      return StoryMediaType.text;
    }
  }
}
