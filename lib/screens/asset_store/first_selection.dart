import 'package:developer_test/shared/exports.dart';
import 'package:flutter/material.dart';

class FirstSelection extends StatefulWidget {
  const FirstSelection({super.key});

  @override
  State<FirstSelection> createState() => _FirstSelectionState();
}

class _FirstSelectionState extends State<FirstSelection> {
  final List<Data> _selectedData = [];

  void _onPressed(Data data) {
    setState(() {
      _selectedData.add(data);
    });
  }

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
              name: 'Welcome, Kwame!',
              number: '3 ICONS',
              nextbutton: _selectedData.length < 3
                  ? NextButton(
                      btext: 'Next',
                      bcolor: Colors.grey,
                      onpressed: () {},
                    )
                  : NextButton(
                      btext: 'Next',
                      bcolor: Colors.green,
                      onpressed: () {
                        Get.to(() => SecondSelection(data: _selectedData));
                      },
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
                        _onPressed(data[index]);
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
