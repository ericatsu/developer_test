import 'package:flutter/material.dart';

class PopularProjects extends StatefulWidget {
  const PopularProjects ({super.key});

  @override
  State<PopularProjects > createState() => _PopularProjectsState();
}

class _PopularProjectsState extends State<PopularProjects > {
  String projectType = 'popular';
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
    );
  }
}
