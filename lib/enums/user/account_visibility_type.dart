enum AccountVisibilityType {
  personal('personal', 'Personal');

  const AccountVisibilityType(this.json, this.display);
  final String json;
  final String display;
}
