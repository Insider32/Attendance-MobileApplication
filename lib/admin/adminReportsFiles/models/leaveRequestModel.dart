import 'package:project/main.dart';

class LeaveRequest {
  final int rwId;
  final String empId;
  final String empName;
  final String department;
  final DateTime fromdate;
  final DateTime todate;
  final String reason;
  final int leaveid;
  final String dur1;
  final String dur2;
  final String dur3;
  final String dur4;
  final String approvedStatus;
  final String approvedBy;
  final DateTime applicationDate;
  final String remark;
  final DateTime approvedDate;

  LeaveRequest({
    required this.rwId,
    required this.empId,
    required this.empName,
    required this.department,
    required this.fromdate,
    required this.todate,
    required this.reason,
    required this.leaveid,
    required this.dur1,
    required this.dur2,
    required this.dur3,
    required this.dur4,
    required this.approvedStatus,
    required this.approvedBy,
    required this.applicationDate,
    required this.remark,
    required this.approvedDate,
  });

  factory LeaveRequest.fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      throw FormatException("Invalid JSON data");
    }

    return LeaveRequest(
      rwId: json['rwId'] ?? 0,
      empId: json['empId'] ?? "",
      empName: json['empName'] ?? "",
      department: json['department'] ?? "",
      fromdate: DateTime.tryParse(json['fromdate'] ?? "") ?? DateTime.now(),
      todate: DateTime.tryParse(json['todate'] ?? "") ?? DateTime.now(),
      reason: json['reason'] ?? "",
      leaveid: json['leaveid'] ?? 0,
      dur1: json['dur1'] ?? "",
      dur2: json['dur2'] ?? "",
      dur3: json['dur3'] ?? "",
      dur4: json['dur4'] ?? "",
      approvedStatus: json['approvedStatus'] ?? "",
      approvedBy: json['approvedBy'] ?? "",
      applicationDate:
          DateTime.tryParse(json['applicationDate'] ?? "") ?? DateTime.now(),
      remark: json['remark'] ?? "",
      approvedDate:
          DateTime.tryParse(json['approvedDate'] ?? "") ?? DateTime.now(),
    );
  }
}

final mockLeaveRequest = LeaveRequest(
  rwId: 1,
  empId: '1',
  empName: faker.person.name(),
  department: 'Main Dept',
  fromdate: DateTime.now(),
  todate: DateTime.now(),
  reason: 'Some reason',
  leaveid: 1,
  dur1: DateTime.now().toString(),
  dur2: DateTime.now().toString(),
  dur3: DateTime.now().toString(),
  dur4: DateTime.now().toString(),
  approvedStatus: 'OK',
  approvedBy: 'Mark Admin',
  applicationDate: DateTime.now(),
  remark: 'No remarks',
  approvedDate: DateTime.now(),
);
