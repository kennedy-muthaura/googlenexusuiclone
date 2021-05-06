class ContactPhoneNumber {
  final String firstName;
  final String lastName;
  final String phoneNumber;
  final String avatarurl;
  final String numberUsedWhere;

  ContactPhoneNumber({
    required this.firstName,
    required this.lastName,
    required this.phoneNumber,
    this.avatarurl = "assetImage for default image",
    this.numberUsedWhere = "mobile",
  });
}
