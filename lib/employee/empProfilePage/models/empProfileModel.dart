import 'package:project/main.dart';

class EmpProfileModel {
  final int empId;
  final String empName;
  final String fatherName;
  final String password;
  final String empCode;
  final String shiftCode;
  final String emailAddress;
  final DateTime dateofJoin;
  final String phoneNo;
  final dynamic profilePic; // New field for the profile picture

  EmpProfileModel({
    required this.empId,
    required this.empName,
    required this.fatherName,
    required this.password,
    required this.empCode,
    required this.shiftCode,
    required this.emailAddress,
    required this.dateofJoin,
    required this.phoneNo,
    required this.profilePic, // Added profilePic to the constructor
  });

  factory EmpProfileModel.fromJson(Map<String, dynamic> json) {
    return EmpProfileModel(
      empId: json['empId'] ?? 0,
      empName: json['empName'] ?? '',
      fatherName: json['fatherName'] ?? '',
      password: json['pwd'],
      empCode: json['empCode'] ?? '',
      shiftCode: json['shiftCode'] ?? '',
      emailAddress: json['emailAddress'] ?? '',
      dateofJoin: json['dateofJoin'] != null
          ? DateTime.tryParse(json['dateofJoin'] ?? '') ?? DateTime.now()
          : DateTime.now(),
      profilePic: json['profilePic'] ?? '', // Parse profilePic from JSON
      phoneNo: json['phoneNo'] ?? '', // Parse profilePic from JSON
    );
  }
}

final mockEmpProfileModel = EmpProfileModel(
  empId: randomGen.integer(100),
  empName: faker.person.name(),
  fatherName: faker.person.name(),
  password: randomGen.string(10),
  empCode: randomGen.string(10),
  shiftCode: randomGen.string(10),
  emailAddress: faker.internet.email(),
  dateofJoin: DateTime.now(),
  phoneNo: faker.phoneNumber.toString(),
  profilePic: null,
);
