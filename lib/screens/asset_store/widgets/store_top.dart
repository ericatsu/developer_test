import 'package:developer_test/shared/exports.dart';
import 'package:flutter/material.dart';

class StoreTop extends StatelessWidget {
  final String name;
  final String number;
  final String message;
  final String btext;
  final Color bcolor;
  final VoidCallback onpressed;
  const StoreTop(
      {super.key,
      required this.name,
      required this.number,
      required this.btext,
      required this.message,
      required this.bcolor, required this.onpressed});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Container(
      color: Palette.black,
      height: height * 0.25,
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: height * 0.02,
          ),
          Text(
            'Welcome, $name!',
            style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Palette.white),
          ),
          SizedBox(
            height: height * 0.005,
          ),
          Text(
            'Add at least $number and tap Next.',
            style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Palette.white),
          ),
          SizedBox(
            height: height * 0.005,
          ),
          Text(
            message,
            style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.white70),
          ),
          SizedBox(
            height: height * 0.01,
          ),
          TextButton(
            onPressed: onpressed,
            style: TextButton.styleFrom(
                backgroundColor: bcolor,
                shape: const BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(2))),
                minimumSize: Size(width * 0.18, height * 0.03)),
            child: Text(
              btext,
              style: const TextStyle(color: Colors.white70),
            ),
          )
        ],
      ),
    );
  }
}