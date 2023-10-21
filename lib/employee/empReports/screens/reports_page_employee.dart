import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project/constants/AppColor_constants.dart';
import 'package:project/employee/empReports/screens/salary_report_page.dart';

import 'daily_report.dart';
import 'empConstants.dart';
import 'empGps_tracker_report.dart';
import 'monthly_report_page.dart';

class EmpReportsPage extends StatelessWidget {

  const EmpReportsPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          padding: EdgeInsets.symmetric(vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildCard(
                context,
                "Daily Report",
                Icons.access_alarm,
                EmpDailyReportsPage(), // Navigate to DailyReportsPage
              ),
              buildCard(
                context,
                "GPS TRACKER REPORT",
                Icons.calendar_today,
                EmpGpsTrackerReport(), // Navigate to MonthlyReportPage
              ),
              buildCard(
                context,
                "MONTHLY REPORT",
                Icons.calendar_today,
                EmpMonthlyReportPage(), // Navigate to MonthlyReportPage
              ),
              buildCard(
                context,
                "SALARY REPORT",
                Icons.monetization_on,
                EmpSalaryReportPage(), // Navigate to SalaryReportPage
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCard(
    BuildContext context,
    String title,
    IconData icon,
    Widget pageToNavigate, // Add a Widget parameter for the page to navigate
  ) {
    return Card(
      elevation: 4,
      color: AppColors.secondaryColor,
      margin: EdgeInsets.all(16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            CupertinoPageRoute(
              fullscreenDialog: true,
              builder: (context) => pageToNavigate, // Use the provided page
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Icon(
                icon,
                size: 32,
                color: Color(0xFFFDF7F5),
              ),
              SizedBox(width: 16),
              Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFFDF7F5),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Define the other report pages similarly...
