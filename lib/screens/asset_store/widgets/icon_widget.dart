import 'package:developer_test/shared/exports.dart';
import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  final Data data;
  final VoidCallback onpressed;
  const IconWidget({super.key, required this.data, required this.onpressed});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 6),
      child: Container(
        height: height * 0.18,
        width: width * 0.9,
        color: Colors.transparent,
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  data.images,
                  height: height * 0.065,
                ),
                SizedBox(
                  width: width * 0.03,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data.name,
                      style: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '${data.number} ⸳ 👤257 ⸳ ★4.7',
                      style: const TextStyle(
                          fontSize: 11, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      width: width * 0.75,
                      child: Text(
                        data.message,
                        maxLines: 4,
                        style: const TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: onpressed,
                      style: TextButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 202, 202, 202),
                        shape: const BeveledRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(2),
                          ),
                        ),
                        minimumSize: Size(width * 0.15, height * 0.02),
                      ),
                      child: const Text(
                        'Add',
                        style: TextStyle(fontSize: 11, color: Palette.black),
                      ),
                    )
                  ],
                )
              ],
            ),
            const Divider(
              color: Palette.black,
              height: 1,
              indent: 2,
              endIndent: 8,
            ),
          ],
        ),
      ),
    );
  }
}

class Data {
  final String images;
  final String name;
  final String number;
  final String message;

  Data(this.images, this.name, this.number, this.message);
}

List<Data> data = [
  Data(Images.pmi, 'PMI', '24 Icons',
      'Find us on one screen: web, social media, GPS locations, apps and more.'),
  Data(Images.rose, 'Bed of Roses 1', '1 Icon',
      'Connect to our Facebook page and let’s make for a happier married life.'),
  Data(Images.pmi, 'PMI 2', '24 Icons',
      'Find us on one screen: web, social media, GPS locations, apps and more.'),
  Data(Images.rose, 'Bed of Roses 2', '1 Icon',
      'Connect to our Facebook page and let’s make for a happier married life.'),
  Data(Images.pmi, 'PMI 3', '24 Icons',
      'Find us on one screen: web, social media, GPS locations, apps and more.'),
  Data(Images.rose, 'Bed of Roses 3', '1 Icon',
      'Connect to our Facebook page and let’s make for a happier married life.'),
  Data(Images.pmi, 'PMI 4', '24 Icons',
      'Find us on one screen: web, social media, GPS locations, apps and more.'),
  Data(Images.rose, 'Bed of Roses 4', '1 Icon',
      'Connect to our Facebook page and let’s make for a happier married life.'),
  Data(Images.pmi, 'PMI 5', '24 Icons',
      'Find us on one screen: web, social media, GPS locations, apps and more.'),
  Data(Images.rose, 'Bed of Roses 5', '1 Icon',
      'Connect to our Facebook page and let’s make for a happier married life.'),
];
