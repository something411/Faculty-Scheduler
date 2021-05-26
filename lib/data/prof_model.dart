import 'dart:io';

class ProfModel {
  String email;
  String password;
  String name;
  String designation;
  String idNo;
  String phNo;
  String researchInterest;
  File image;

  ProfModel({
    this.email,
    this.password,
    this.name,
    this.designation,
    this.idNo,
    this.phNo,
    this.researchInterest,
    this.image,
  });
}
