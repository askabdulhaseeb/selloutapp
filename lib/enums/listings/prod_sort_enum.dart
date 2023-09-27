enum ProdSortEnum {
  newlyList('newly_list', 'Newly List'),
  bestMatch('best_match', 'Best Match'),
  lowestPriceAndPostage('lowest_price_and_postage', 'Lowest Price And Postage'),
  highestPriceAndPostage(
      'highest_price_and_postage', 'highest Price And Postage');

  const ProdSortEnum(this.json, this.title);
  final String json;
  final String title;
}
