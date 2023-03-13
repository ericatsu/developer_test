import 'package:flutter/material.dart';
import '../../shared/exports.dart';

class PopularProjects extends StatefulWidget {
  const PopularProjects({super.key});

  @override
  State<PopularProjects> createState() => _PopularProjectsState();
}

class _PopularProjectsState extends State<PopularProjects> {
  String projectType = 'popular';
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: SizedBox(
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
