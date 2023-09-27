enum ProductPropertyType {
  simple('simple', 'Product'),
  bid('bid', 'Bid');

  const ProductPropertyType(this.json, this.title);
  final String json;
  final String title;
}

class ProductPropertyTypeConvertor {
  List<ProductPropertyType> toEnum(List<String> value) {
    if (value.isEmpty) return <ProductPropertyType>[ProductPropertyType.simple];
    final List<ProductPropertyType> myType = <ProductPropertyType>[];
    for (String element in value) {
      switch (element) {
        case 'simple':
          if (!myType.contains(ProductPropertyType.simple)) {
            myType.add(ProductPropertyType.simple);
          }
          break;
        case 'bid':
          if (!myType.contains(ProductPropertyType.bid)) {
            myType.add(ProductPropertyType.bid);
          }
          break;
        default:
          if (!myType.contains(ProductPropertyType.simple)) {
            myType.add(ProductPropertyType.simple);
          }
      }
    }
    return myType.isEmpty
        ? <ProductPropertyType>[ProductPropertyType.simple]
        : myType;
  }

  List<String> toStringList(List<ProductPropertyType> value) {
    if (value.isEmpty) return <String>[ProductPropertyType.simple.json];
    final List<String> myType = <String>[];
    for (ProductPropertyType element in value) {
      switch (element) {
        case ProductPropertyType.simple:
          if (!myType.contains(ProductPropertyType.simple.json)) {
            myType.add(ProductPropertyType.simple.json);
          }
          break;
        case ProductPropertyType.bid:
          if (!myType.contains(ProductPropertyType.bid.json)) {
            myType.add(ProductPropertyType.bid.json);
          }
          break;
        default:
          if (!myType.contains(ProductPropertyType.simple.json)) {
            myType.add(ProductPropertyType.simple.json);
          }
      }
    }
    return myType.isEmpty ? <String>[ProductPropertyType.simple.json] : myType;
  }
}
