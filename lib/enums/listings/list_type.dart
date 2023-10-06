enum ListType {
  item('item', 'IT', 'Item', 10),
  clothesAndFoot('clothes-footwear', 'CF', 'Clothes Footwear', 30),
  vehicles('vehicles', 'VE', 'Vehicles', 20),
  foodAndDrinks('food-drinks', 'FD', 'Food Drinks', 10),
  properties('properties-sale-rent', 'PR', 'Properties Sale & Rent', 50),
  services('services', 'SE', 'Services', 10),
  pet('pet', 'PE', 'Pet', 20);

  const ListType(this.json, this.short, this.display, this.noOdPhotos);
  final String json;
  final String short;
  final String display;
  final int noOdPhotos;
}

class ListTypeConv {
  static List<ListType> get list => <ListType>[
        ListType.item,
        ListType.clothesAndFoot,
        ListType.vehicles,
        ListType.foodAndDrinks,
        ListType.properties,
        ListType.services,
        ListType.pet,
      ];
}
