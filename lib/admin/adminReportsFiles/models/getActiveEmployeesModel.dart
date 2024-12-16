import 'package:project/main.dart';

class GetActiveEmpModel {
  int? empId;
  String? empName;
  String? empCode;
  bool isSelected = false;
  String remarks;
  String? deptNames;
  String? branchNames;
  String? companyNames;

  GetActiveEmpModel({
    this.empId,
    this.empName,
    this.empCode,
    this.remarks = '',
    this.deptNames,
    this.branchNames,
    this.companyNames,
  });

  factory GetActiveEmpModel.fromJson(Map<String, dynamic> json) {
    return GetActiveEmpModel(
      empId: json['empId'] as int?,
      empName: json['empName'] as String?,
      empCode: json['empCode'] as String?,
      deptNames: json['deptNames'] as String?,
      branchNames: json['branchNames'] as String?,
      companyNames: json['companyNames'] as String?,
    );
  }
}

final mockActiveEmpModel = GetActiveEmpModel(
  empId: 1,
  empName: faker.person.name(),
  empCode: '0101',
  deptNames: 'Main Dept',
  branchNames: 'Main Branch',
  companyNames: 'Main Company',
);
