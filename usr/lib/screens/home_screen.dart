import 'package:flutter/material.dart';
import 'package:couldai_user_app/screens/employee_info_screen.dart';
import 'package:couldai_user_app/screens/attendance_screen.dart';
import 'package:couldai_user_app/screens/leave_request_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const EmployeeInfoScreen()),
                );
              },
              child: const Text('Employee Information'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AttendanceScreen()),
                );
              },
              child: const Text('Mark Attendance'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LeaveRequestScreen()),
                );
              },
              child: const Text('Request Leave'),
            ),
          ],
        ),
      ),
    );
  }
}
