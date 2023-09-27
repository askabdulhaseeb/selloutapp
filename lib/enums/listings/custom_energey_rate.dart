enum CustomEnergyRate {
  k1to20('1 to 20', '1to20'),
  k21to38('21 to 38', '21to38'),
  k39to54('39 to 54', '39to54'),
  k55to68('55 to 68', '55to68'),
  k69to80('69 to 80', '69to80'),
  k81to91('81 to 91', '81to91'),
  k92plus('92 or higher', '92plus');

  const CustomEnergyRate(this.title, this.json);
  final String title;
  final String json;
}

class CustomEnergyRateFun {
  static List<CustomEnergyRate> get energies => <CustomEnergyRate>[
        CustomEnergyRate.k1to20,
        CustomEnergyRate.k21to38,
        CustomEnergyRate.k39to54,
        CustomEnergyRate.k55to68,
        CustomEnergyRate.k69to80,
        CustomEnergyRate.k81to91,
        CustomEnergyRate.k92plus,
      ];
  static CustomEnergyRate fromMap(String value) {
    switch (value) {
      case '1to20':
        return CustomEnergyRate.k1to20;
      case '21to38':
        return CustomEnergyRate.k21to38;
      case '39to54':
        return CustomEnergyRate.k39to54;
      case '55to68':
        return CustomEnergyRate.k55to68;
      case '69to80':
        return CustomEnergyRate.k69to80;
      case '81to91':
        return CustomEnergyRate.k81to91;
      case '92plus':
        return CustomEnergyRate.k92plus;
      default:
        return CustomEnergyRate.k1to20;
    }
  }
}
