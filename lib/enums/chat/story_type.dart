enum StoryType {
  story('story', 'Story'),
  promo('promo', 'ProMo');

  const StoryType(this.json, this.title);
  final String title;
  final String json;
}

class StoryTypeConvertor {
  StoryType toEnum(String type) {
    if (type == StoryType.promo.json) {
      return StoryType.promo;
    }
    return StoryType.story;
  }
}
