class MonthlyReportsModel {
  final String? shiftStartTime;
  final String? shiftEndTime;
  final int? hoursWorked;
  final String? status;
  final int? otDuration;
  final int? earlyArrival;
  final int? earlyDeparture;
  final int? lateArrival;
  final int? totalLossHours;
  final String? reason;
  final String? shift;
  final String? in1;
  final String? in2;
  final String? out1;
  final String? out2;
  final String? remark;

  MonthlyReportsModel({
    required this.shiftStartTime,
    required this.shiftEndTime,
    required this.hoursWorked,
    required this.status,
    required this.otDuration,
    required this.earlyArrival,
    required this.earlyDeparture,
    required this.lateArrival,
    required this.totalLossHours,
    required this.reason,
    required this.shift,
    required this.in1,
    required this.in2,
    required this.out1,
    required this.out2,
    required this.remark,
  });

  factory MonthlyReportsModel.fromJson(Map<String, dynamic> json) {
    return MonthlyReportsModel(
      shiftStartTime: json['shiftstarttime'] as String?,
      shiftEndTime: json['shiftendtime'] as String?,
      hoursWorked: json['hoursworked'] as int?,
      status: json['status'] as String?,
      otDuration: json['otduration'] as int?,
      earlyArrival: json['earlyarrival'] as int?,
      earlyDeparture: json['earlydeparture'] as int?,
      lateArrival: json['latearrival'] as int?,
      totalLossHours: json['totallosshrs'] as int?,
      reason: json['reason'] as String?,
      shift: json['shift'] as String?,
      in1: json['in1'] as String?,
      in2: json['in2'] as String?,
      out1: json['out1'] as String?,
      out2: json['out2'] as String?,
      remark: json['remark'] as String?,
    );
  }
}

final mockMonthReport = MonthlyReportsModel(
  shiftStartTime: DateTime.now().toIso8601String(),
  shiftEndTime: DateTime.now().add(const Duration(days: 1)).toIso8601String(),
  hoursWorked: 8,
  status: 'OK',
  otDuration: 4,
  earlyArrival: 1,
  earlyDeparture: 2,
  lateArrival: 3,
  totalLossHours: 2,
  reason: 'Some reason',
  shift: 'Shift 1',
  in1: DateTime.now().toIso8601String(),
  in2: DateTime.now().toIso8601String(),
  out1: DateTime.now().toIso8601String(),
  out2: DateTime.now().toIso8601String(),
  remark: 'No remarks',
);
