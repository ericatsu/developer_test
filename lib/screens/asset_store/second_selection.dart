import 'package:developer_test/screens/asset_store/widgets/next_button.dart';
import 'package:developer_test/shared/exports.dart';
import 'package:flutter/material.dart';

class SecondSelection extends StatelessWidget {
  final List<Data> data;
  const SecondSelection({super.key, required this.data});

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
              message: 'Add at least 2 SCREENS to finish up.',
              name: 'Kwame',
              number: '3 ICONS',
              bcolor: Colors.grey,
              nextbutton: NextButton(
                bcolor: Colors.grey,
                onpressed: () {},
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
                      onpressed: () {
                        Navigator.pop(context, data);
                      },
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
