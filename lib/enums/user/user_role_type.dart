enum UserRoleType {
  user('user', 'User');

  const UserRoleType(this.json, this.display);
  final String json;
  final String display;
}
