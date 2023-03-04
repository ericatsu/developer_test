import 'package:developer_test/screens/asset_store/third_page.dart';
import 'package:developer_test/shared/exports.dart';
import 'package:flutter/material.dart';

class SecondSelection extends StatefulWidget {
  final List<Data> data;
  const SecondSelection({super.key, required this.data});

  @override
  State<SecondSelection> createState() => _SecondSelectionState();
}

class _SecondSelectionState extends State<SecondSelection> {
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
              message: 'Add at least 2 SCREENS to finish up.',
              name: 'Great!',
              number: '2 ICONS',
              nextbutton: _selectedData.length < 2
                  ? NextButton(
                      bcolor: Colors.grey,
                      onpressed: () {},
                      btext: 'Next',
                    )
                  : NextButton(
                      btext: 'Next',
                      bcolor: Colors.green,
                      onpressed: () {
                        Get.to(() => ThirdPage(data: _selectedData));
                      },
                    ),
            ),
            SingleChildScrollView(
              child: SizedBox(
                height: height * 0.75,
                child: ListView.builder(
                  itemCount: widget.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return IconWidget(
                      data: widget.data[index],
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
