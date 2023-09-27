enum ListType {
  item('item'),
  clothesAndFoot('clothes-footwear'),
  vehicles('vehicles'),
  foodAndDrinks('food-drinks'),
  properties('properties-sale-rent'),
  services('services'),
  pet('pet');

  const ListType(this.json);
  final String json;
}
