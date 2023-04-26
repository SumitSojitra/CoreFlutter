import 'dart:io';

class Contacts {
  String firstName;
  String lastName;
  String phoneNumber;
  String email;
  File? imgFile;

  Contacts({
    required this.firstName,
    required this.lastName,
    required this.phoneNumber,
    required this.email,
    this.imgFile,
  });
}
