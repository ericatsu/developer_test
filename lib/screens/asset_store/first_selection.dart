import 'package:developer_test/shared/exports.dart';
import 'package:flutter/material.dart';

class FirstSelection extends StatelessWidget {
  const FirstSelection({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SizedBox(
        height: height,
        width: width,
        child: Column(
          children: [
            StoreTop(
              btext: 'Next',
              message: 'Home Icons are displayed on your Start Screen.',
              name: 'Kwame',
              number: '3 ICONS',
              bcolor: Colors.grey,
              onpressed: () {
                Get.to(const SecondSelection());
              },
            ),
            SingleChildScrollView(
              child: SizedBox(
                height: height * 0.75,
                child: ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return IconWidget(
                      data: data[index],
                      onpressed: () {},
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
