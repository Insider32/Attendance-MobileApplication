import 'package:project/main.dart';

class Employee {
  final int empId;
  final String empName;
  final String fatherName;
  final String empCode;
  final String pwd;
  final String cardNo;
  final int companyId;
  final int deptId;
  final int desigId;
  final int branchId;
  final int otimePoliceId;
  final DateTime dateofJoin;
  final String reginDate;
  final int superiourName;
  final int shiftId;
  final String shiftType;
  final String shiftPatternId;
  final bool isAutoShift;
  final String autoShifts;
  final String firstOffDay;
  final String secondOffDayType;
  final String secondOffDay;
  final int halfDayShiftId;
  final String secondWeekOffDays;
  final int shiftRemaindays;
  final int cdays;
  final DateTime shiftStartDate;
  final String shiftCode;
  final String halfDayShiftCode;
  final String imagePath;
  final bool active;
  final DateTime onDate;
  final int byUser;
  final String emailAddress;
  final String bsalary;
  final dynamic leaveActive;
  final dynamic laveBalance;
  final String phoneNo;
  final String profilePic;
  final int corpPolicyid;
  final DateTime dateofBirth;
  final int gpsactive;
  final String cardno1;
  final dynamic validitystart;
  final dynamic validityend;
  final dynamic weekTimeZone;
  final dynamic weekTimeZone2;
  final dynamic weekTimeZone3;
  final dynamic weekTimeZone4;
  final dynamic eaddress;
  final String deviceToken;
  final int type;
  final dynamic adminnotification;
  final dynamic empDeviceToken;
  final dynamic adminDeviceToken;
  final dynamic activeFlag;
  final dynamic weekTimeZone5;
  final dynamic verifyno;
  final dynamic bankName;
  final dynamic bankAcNumber;
  final dynamic bankIfscCode;
  final String tourAmt;
  final int minuts;
  final dynamic branchAccess;
  final int activeGeo;
  final String branchNames;
  final String companyNames;
  final String deptNames;
  final String desigNames;
  final dynamic branch;
  final dynamic company;
  final dynamic dept;
  final dynamic desig;
  final dynamic otimePolice;
  final dynamic mstSalaryDetail;

  Employee({
    required this.empId,
    required this.empName,
    required this.fatherName,
    required this.empCode,
    required this.pwd,
    required this.cardNo,
    required this.companyId,
    required this.deptId,
    required this.desigId,
    required this.branchId,
    required this.otimePoliceId,
    required this.dateofJoin,
    required this.reginDate,
    required this.superiourName,
    required this.shiftId,
    required this.shiftType,
    required this.shiftPatternId,
    required this.isAutoShift,
    required this.autoShifts,
    required this.firstOffDay,
    required this.secondOffDayType,
    required this.secondOffDay,
    required this.halfDayShiftId,
    required this.secondWeekOffDays,
    required this.shiftRemaindays,
    required this.cdays,
    required this.shiftStartDate,
    required this.shiftCode,
    required this.halfDayShiftCode,
    required this.imagePath,
    required this.active,
    required this.onDate,
    required this.byUser,
    required this.emailAddress,
    required this.bsalary,
    required this.leaveActive,
    required this.laveBalance,
    required this.phoneNo,
    required this.profilePic,
    required this.corpPolicyid,
    required this.dateofBirth,
    required this.gpsactive,
    required this.cardno1,
    required this.validitystart,
    required this.validityend,
    required this.weekTimeZone,
    required this.weekTimeZone2,
    required this.weekTimeZone3,
    required this.weekTimeZone4,
    required this.eaddress,
    required this.deviceToken,
    required this.type,
    required this.adminnotification,
    required this.empDeviceToken,
    required this.adminDeviceToken,
    required this.activeFlag,
    required this.weekTimeZone5,
    required this.verifyno,
    required this.bankName,
    required this.bankAcNumber,
    required this.bankIfscCode,
    required this.tourAmt,
    required this.minuts,
    required this.branchAccess,
    required this.activeGeo,
    required this.branchNames,
    required this.companyNames,
    required this.deptNames,
    required this.desigNames,
    required this.branch,
    required this.company,
    required this.dept,
    required this.desig,
    required this.otimePolice,
    required this.mstSalaryDetail,
  });

  factory Employee.fromJson(Map<String, dynamic> json) {
    return Employee(
      empId: json['empId'] ?? 0,
      empName: json['empName'] ?? '',
      fatherName: json['fatherName'] ?? '',
      empCode: json['empCode'] ?? '',
      pwd: json['pwd'] ?? '',
      cardNo: json['cardNo'] ?? '',
      companyId: json['companyId'] ?? 0,
      deptId: json['deptId'] ?? 0,
      desigId: json['desigId'] ?? 0,
      branchId: json['branchId'] ?? 0,
      otimePoliceId: json['otimePoliceId'] ?? 0,
      dateofJoin: json['dateofJoin'] != null
          ? DateTime.parse(json['dateofJoin'])
          : DateTime.now(),
      reginDate: json['reginDate'] ?? '',
      superiourName: json['superiourName'] ?? 0,
      shiftId: json['shiftId'] ?? 0,
      shiftType: json['shiftType'] ?? '',
      shiftPatternId: json['shiftPatternId'] ?? '',
      isAutoShift: json['isAutoShift'] ?? false,
      autoShifts: json['autoShifts'] ?? '',
      firstOffDay: json['firstOffDay'] ?? '',
      secondOffDayType: json['secondOffDayType'] ?? '',
      secondOffDay: json['secondOffDay'] ?? '',
      halfDayShiftId: json['halfDayShiftId'] ?? 0,
      secondWeekOffDays: json['secondWeekOffDays'] ?? '',
      shiftRemaindays: json['shiftRemaindays'] ?? 0,
      cdays: json['cdays'] ?? 0,
      shiftStartDate: json['shiftStartDate'] != null
          ? DateTime.parse(json['shiftStartDate'])
          : DateTime.now(),
      shiftCode: json['shiftCode'] ?? '',
      halfDayShiftCode: json['halfDayShiftCode'] ?? '',
      imagePath: json['imagePath'] ?? '',
      active: json['active'] ?? false,
      onDate: json['onDate'] != null
          ? DateTime.parse(json['onDate'])
          : DateTime.now(),
      byUser: json['byUser'] ?? 0,
      emailAddress: json['emailAddress'] ?? '',
      bsalary: json['bsalary'] ?? '',
      leaveActive: json['leaveActive'] ?? '',
      laveBalance: json['laveBalance'] ?? '',
      phoneNo: json['phoneNo'] ?? '',
      profilePic: json['profilePic'] ?? '',
      corpPolicyid: json['corpPolicyid'] ?? 0,
      dateofBirth: json['dateofBirth'] != null
          ? DateTime.parse(json['dateofBirth'])
          : DateTime.now(),
      gpsactive: json['gpsactive'] ?? 0,
      cardno1: json['cardno1'] ?? '',
      validitystart: json['validitystart'] ?? '',
      validityend: json['validityend'] ?? '',
      weekTimeZone: json['weekTimeZone'] ?? '',
      weekTimeZone2: json['weekTimeZone2'] ?? '',
      weekTimeZone3: json['weekTimeZone3'] ?? '',
      weekTimeZone4: json['weekTimeZone4'] ?? '',
      eaddress: json['eaddress'] ?? '',
      deviceToken: json['deviceToken'] ?? '',
      type: json['type'] ?? 0,
      adminnotification: json['adminnotification'] ?? '',
      empDeviceToken: json['empDeviceToken'] ?? '',
      adminDeviceToken: json['adminDeviceToken'] ?? '',
      activeFlag: json['activeFlag'] ?? '',
      weekTimeZone5: json['weekTimeZone5'] ?? '',
      verifyno: json['verifyno'] ?? '',
      bankName: json['bankName'] ?? '',
      bankAcNumber: json['bankAcNumber'] ?? '',
      bankIfscCode: json['bankIfscCode'] ?? '',
      tourAmt: json['tourAmt'] ?? '',
      minuts: json['minuts'] ?? 0,
      branchAccess: json['branchAccess'] ?? '',
      activeGeo: json['activeGeo'] ?? 0,
      branchNames: json['branchNames'] ?? '',
      companyNames: json['companyNames'] ?? '',
      deptNames: json['deptNames'] ?? '',
      desigNames: json['desigNames'] ?? '',
      branch: json['branch'] ?? '',
      company: json['company'] ?? '',
      dept: json['dept'] ?? '',
      desig: json['desig'] ?? '',
      otimePolice: json['otimePolice'] ?? '',
      mstSalaryDetail: json['mstSalaryDetail'] ?? '',
    );
  }
}

final mockEmployee = Employee(
  empId: randomGen.integer(10),
  empName: faker.person.name(),
  fatherName: faker.person.name(),
  empCode: randomGen.string(10),
  pwd: randomGen.string(10),
  cardNo: randomGen.string(10),
  companyId: randomGen.integer(10),
  deptId: randomGen.integer(10),
  desigId: randomGen.integer(10),
  branchId: randomGen.integer(10),
  otimePoliceId: randomGen.integer(10),
  dateofJoin: DateTime.now(),
  reginDate: faker.date.toString(),
  superiourName: randomGen.integer(10),
  shiftId: randomGen.integer(10),
  shiftType: randomGen.string(10),
  shiftPatternId: randomGen.string(10),
  isAutoShift: randomGen.boolean(),
  autoShifts: randomGen.string(10),
  firstOffDay: randomGen.string(10),
  secondOffDayType: randomGen.string(10),
  secondOffDay: randomGen.string(10),
  halfDayShiftId: randomGen.integer(10),
  secondWeekOffDays: randomGen.string(10),
  shiftRemaindays: randomGen.integer(10),
  cdays: randomGen.integer(10),
  shiftStartDate: DateTime.now(),
  shiftCode: randomGen.string(10),
  halfDayShiftCode: randomGen.string(10),
  imagePath: randomGen.string(10),
  active: randomGen.boolean(),
  onDate: DateTime.now(),
  byUser: randomGen.integer(10),
  emailAddress: faker.internet.email(),
  bsalary: randomGen.string(10),
  leaveActive: randomGen.string(10),
  laveBalance: randomGen.string(10),
  phoneNo: faker.phoneNumber.us(),
  profilePic: randomGen.string(10),
  corpPolicyid: randomGen.integer(10),
  dateofBirth: DateTime.now(),
  gpsactive: randomGen.integer(10),
  cardno1: randomGen.string(10),
  validitystart: randomGen.string(10),
  validityend: randomGen.string(10),
  weekTimeZone: randomGen.string(10),
  weekTimeZone2: randomGen.string(10),
  weekTimeZone3: randomGen.string(10),
  weekTimeZone4: randomGen.string(10),
  eaddress: randomGen.string(10),
  deviceToken: randomGen.string(10),
  type: randomGen.integer(10),
  adminnotification: randomGen.string(10),
  empDeviceToken: randomGen.string(10),
  adminDeviceToken: randomGen.string(10),
  activeFlag: randomGen.string(10),
  weekTimeZone5: randomGen.string(10),
  verifyno: randomGen.string(10),
  bankName: randomGen.string(10),
  bankAcNumber: randomGen.string(10),
  bankIfscCode: randomGen.string(10),
  tourAmt: randomGen.string(10),
  minuts: randomGen.integer(10),
  branchAccess: randomGen.string(10),
  activeGeo: randomGen.integer(10),
  branchNames: randomGen.string(10),
  companyNames: randomGen.string(10),
  deptNames: randomGen.string(10),
  desigNames: randomGen.string(10),
  branch: randomGen.string(10),
  company: randomGen.string(10),
  dept: randomGen.string(10),
  desig: randomGen.string(10),
  otimePolice: randomGen.string(10),
  mstSalaryDetail: randomGen.string(10),
);
