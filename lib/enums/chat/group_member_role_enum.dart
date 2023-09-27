enum GroupMemberRoleEnum {
  admin('admin', 'Admin'),
  member('member', 'Member');

  const GroupMemberRoleEnum(this.json, this.title);
  final String json;
  final String title;
}

class GroupMemberRoleEnumConvertor {
  GroupMemberRoleEnum fromMap(String role) {
    if (role == 'admin') {
      return GroupMemberRoleEnum.admin;
    } else {
      return GroupMemberRoleEnum.member;
    }
  }
}
