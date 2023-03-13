import 'package:flutter/material.dart';

import '../../../shared/exports.dart';

class CategoryWidget extends StatelessWidget {
  final VoidCallback onTap;
  const CategoryWidget({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          children: [
            Image.asset(
              Images.category,
              height: height * 0.040,
            ),
            SizedBox(
              width: width * 0.032,
            ),
            const Text(
              "Browser Categories",
              style: TextStyle(
                  fontSize: 14, color: Colors.black, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              width: width * 0.31,
            ),
            const Icon(
              CupertinoIcons.forward,
              size: 16,
            )
          ],
        ),
      ),
    );
  }
}
