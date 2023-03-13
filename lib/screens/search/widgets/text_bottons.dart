import 'package:flutter/material.dart';

class TextButtons extends StatelessWidget {
  final GestureTapCallback onTap;
  final Color bcolor;
  final Color textcolor;
  final String btext;

  const TextButtons({
    super.key,
    required this.btext,
    required this.onTap,
    required this.bcolor,
    required this.textcolor,
  });

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            btext,
            style: TextStyle(
              color: textcolor,
              fontSize: 15.5,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 12.0,),
            height: 1.5,
            width: width * 0.5,
            color: bcolor,
          ),
        ],
      ),
    );
  }
}
