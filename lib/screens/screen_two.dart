import 'package:developer_test/screens/nav_page.dart';
import 'package:developer_test/shared/exports.dart';
import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        color: Colors.green,
      ),
      bottomNavigationBar: NavPage(
      ),
    );
  }
}
