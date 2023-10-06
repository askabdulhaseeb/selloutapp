enum ListType {
  item('item', 'IT', 'Item'),
  clothesAndFoot('clothes-footwear', 'CF', 'Clothes Footwear'),
  vehicles('vehicles', 'VE', 'Vehicles'),
  foodAndDrinks('food-drinks', 'FD', 'Food Drinks'),
  properties('properties-sale-rent', 'PR', 'Properties Sale & Rent'),
  services('services', 'SE', 'Services'),
  pet('pet', 'PE', 'Pet');

  const ListType(this.json, this.short, this.display);
  final String json;
  final String short;
  final String display;
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
