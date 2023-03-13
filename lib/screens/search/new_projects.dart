
import 'package:developer_test/shared/exports.dart';
import 'package:flutter/material.dart';

class NewProjects extends StatefulWidget {
  const NewProjects({super.key});

  @override
  State<NewProjects> createState() => _NewProjectsState();
}

class _NewProjectsState extends State<NewProjects> {
  String projectType = 'new';
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Container(
        color: Color.fromARGB(255, 247, 247, 101),
        height: height * 0.66,
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
    );
  }
}