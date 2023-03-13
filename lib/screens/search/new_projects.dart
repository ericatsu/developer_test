
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
    return Container(
      color: Colors.blue,
    );
  }
}