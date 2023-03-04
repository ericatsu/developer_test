import 'package:developer_test/shared/exports.dart';
import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  final List<Data> data;
  const ThirdPage({super.key, required this.data});

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
              btext: 'Finish',
              message: 'Add at least 2 SCREENS to finish up.',
              name: 'Great!',
              number: '2 ICONS',
              nextbutton: NextButton(
                bcolor: Colors.green,
                onpressed: () {},
                btext: 'Finish',
              ),
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
