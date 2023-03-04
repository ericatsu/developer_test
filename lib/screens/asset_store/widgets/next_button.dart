import 'package:developer_test/shared/exports.dart';
import 'package:flutter/material.dart';

class NextButton extends StatelessWidget {
  final VoidCallback onpressed;
  final String btext;
  final Color bcolor;

  const NextButton({super.key, required this.onpressed, required this.bcolor, required this.btext});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return TextButton(
      onPressed: onpressed,
      style: TextButton.styleFrom(
        backgroundColor: bcolor,
        shape: const BeveledRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(2),
          ),
        ),
        minimumSize: Size(width * 0.15, height * 0.02),
      ),
      child:  Text(
        btext,
        style: TextStyle(fontSize: 11, color: Palette.black),
      ),
    );
  }
}
