import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:page_transition/page_transition.dart';
import 'package:project/constants/AppBar_constant.dart';
import 'package:project/introduction/bloc/bloc_internet/internet_bloc.dart';
import 'package:project/introduction/bloc/bloc_internet/internet_state.dart';
import '../../../No_internet/no_internet.dart';
import '../models/AdminDailyReportsModel.dart';
import '../models/AdminDailyReportsRepository.dart';

class DailyReportsScreen extends StatefulWidget {
  final List<int> selectedEmployeeIds;

  const DailyReportsScreen({Key? key, required this.selectedEmployeeIds});

  @override
  State<DailyReportsScreen> createState() => _DailyReportsScreenState();
}

class _DailyReportsScreenState extends State<DailyReportsScreen> {
  DateTime selectedDate = DateTime.now();
  List<AdminDailyReportsModel> dailyReports = [];

  AdminReportsRepository repository =
      AdminReportsRepository();

  @override
  void initState() {
    super.initState();
    // Initialize selectedDate with the current date and time
    selectedDate = DateTime.now();
    fetchDataFromAPI(selectedDate, widget.selectedEmployeeIds);
  }

  void fetchDataFromAPI(DateTime date, List<int> employeeIds) async {
    final formattedDate = date
        .toLocal()
        .toString()
        .split(' ')[0]; // Format the date to yyyy-MM-dd

    try {
      final reports =
          await repository.fetchDailyReports(employeeIds, formattedDate);
      setState(() {
        dailyReports = reports;
      });
    } catch (error) {
      print('Error fetching data: $error');
      // Handle the error
    }
  }

  bool isInternetLost = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<InternetBloc, InternetStates>(
      listener: (context, state) {
        // TODO: implement listener
        if (state is InternetLostState) {
          // Set the flag to true when internet is lost
          isInternetLost = true;
          Future.delayed(Duration(seconds: 2), () {
            Navigator.push(
              context,
              PageTransition(
                child: NoInternet(),
                type: PageTransitionType.rightToLeft,
              ),
            );
          });
        } else if (state is InternetGainedState) {
          // Check if internet was previously lost
          if (isInternetLost) {
            // Navigate back to the original page when internet is regained
            Navigator.pop(context);
          }
          isInternetLost = false; // Reset the flag
        }
      },
      builder: (context, state) {
        if (state is InternetGainedState) {
          return Scaffold(
            appBar: AppBar(
              title: Text(
                "Daily Reports",
                style: AppBarStyles.appBarTextStyle,
              ),
              backgroundColor: AppBarStyles.appBarBackgroundColor,
              centerTitle: true,
              iconTheme: IconThemeData(color: AppBarStyles.appBarIconColor),
            ),
            body: Column(
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 11),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 40.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                            onPressed: () => _selectDate(context),
                            icon: Icon(Icons.calendar_month_outlined),
                            tooltip: 'Select Date',
                          ),
                          Expanded(
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "${DateFormat("dd MMMM y").format(selectedDate)}",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                Expanded(
                  child: ListView.builder(
                    itemCount: dailyReports.length,
                    itemBuilder: (context, index) {
                      final report = dailyReports[index];
                      return Card(
                        margin: EdgeInsets.all(16.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        elevation: 5,
                        child: Table(
                          children: [
                            TableRow(children: [
                              TableCell(
                                  child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 8.0, left: 16.0),
                                child: Text(
                                  "ID: ${report.empId}",
                                  style: GoogleFonts.poppins(
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              )),
                              TableCell(child: SizedBox()),
                            ]),
                            TableRow(
                              children: [
                                TableCell(
                                  child: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Text(
                                      "Shift",
                                      style: GoogleFonts.poppins(
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                                TableCell(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      top: 16.0,
                                    ),
                                    child: Text(
                                      "Punch Time",
                                      style: GoogleFonts.poppins(
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            TableRow(
                              children: [
                                TableCell(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 16.0),
                                    child: Text(
                                      "Start",
                                      style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                                TableCell(
                                  child: Text(
                                    "In",
                                    style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            TableRow(
                              children: [
                                TableCell(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 16.0),
                                    child: Text(
                                      "${report.shiftStartTime != null ? DateFormat('hh:mm dd/MM/yyyy').format(report.shiftStartTime!) : '---'}",
                                      style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                                TableCell(
                                  child: Text(
                                    "${report.in1 != null ? DateFormat('hh:mm dd/MM/yyyy').format(report.in1!) : '---'}",
                                    style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            TableRow(
                              children: [
                                TableCell(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 16.0),
                                    child: Text(
                                      "End",
                                      style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                                TableCell(
                                  child: Text(
                                    "Out",
                                    style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            TableRow(
                              children: [
                                TableCell(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 16.0),
                                    child: Text(
                                      "${report.shiftEndTime != null ? DateFormat('hh:mm dd/MM/yyyy').format(report.shiftEndTime!) : '---'}",
                                      style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                                TableCell(
                                  child: Text(
                                    "${report.out2 != null ? DateFormat('hh:mm dd/MM/yyyy').format(report.out2!) : '---'}",
                                    style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            TableRow(
                              children: [
                                TableCell(
                                  child: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Padding(
                                      padding: const EdgeInsets.only(top:8.0),
                                      child: Text(
                                        "Worked: ${report.hoursWorked/60}",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ),
                                  ),
                                ),
                                TableCell(
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 60,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top:12),
                                        decoration: BoxDecoration(
                                          color: Colors.green, // Status color
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                        padding: EdgeInsets.all(8),
                                        child: Text(
                                          "Status: ${report.status != null ? (report.status.length > 15 ? report.status.substring(0, 15) + '...' : report.status) : '---'}",
                                          style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        } else {
          return Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }
      },
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime now = DateTime.now();
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2022),
      lastDate: DateTime(2100), // Set a maximum allowed date
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });

      // Call a separate function to handle data fetching
      _handleDateSelection(selectedDate, widget.selectedEmployeeIds);
    }
  }

  void _handleDateSelection(DateTime date, List<int> employeeIds) {
    final formattedDate = date.toLocal().toString().split(' ')[0];

    fetchDataFromAPI(date, employeeIds);
  }
}
