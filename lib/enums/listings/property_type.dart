enum PropertyType {
  house('House', 'house'),
  plot('Plot', 'plot'),
  commercial('Commercial', 'commercial'),
  other('Other', 'other');

  const PropertyType(this.title, this.json);

  final String title;
  final String json;
}

class PropertyTypeFun {
  static List<PropertyType> get types => <PropertyType>[
        PropertyType.house,
        PropertyType.plot,
        PropertyType.commercial,
      ];
  static PropertyType fromMap(String type) {
    switch (type) {
      case 'House':
      case 'house':
        return PropertyType.house;
      case 'Plot':
      case 'plot':
        return PropertyType.plot;
      case 'Commercial':
      case 'commercial':
        return PropertyType.commercial;
      default:
        return PropertyType.other;
    }
  }
}
