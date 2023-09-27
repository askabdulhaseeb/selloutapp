enum TenureType {
  freehold('Freehold', 'freehold'),
  leashold('Leashold', 'leashold');

  const TenureType(this.title, this.json);
  final String title;
  final String json;
}

class TenureTypeFun {
  static TenureType fromMap(String type) {
    switch (type) {
      case 'freehold':
      case 'Freehold':
        return TenureType.freehold;
      case 'Leashold':
      case 'leashold':
        return TenureType.leashold;
      default:
        return TenureType.leashold;
    }
  }
}
