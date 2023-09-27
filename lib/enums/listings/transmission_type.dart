enum TransmissionType {
  auto('Auto', 'auto'),
  manual('Manual', 'manual');

  const TransmissionType(this.title, this.json);
  final String title;
  final String json;
}

class TransmissionTypeFun {
  static TransmissionType fromMap(String type) {
    switch (type) {
      case 'Auto':
      case 'auto':
        return TransmissionType.auto;
      case 'Manual':
      case 'manual':
        return TransmissionType.manual;
      default:
        return TransmissionType.manual;
    }
  }
}
