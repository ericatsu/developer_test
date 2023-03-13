import 'package:flutter/material.dart';
import '../../shared/exports.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  String projectType = 'popular';
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: height,
          width: width,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: height * 0.012,
              ),
              const Text(
                'Search',
                style: TextStyle(
                    fontSize: 18.5,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: height * 0.012,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: CupertinoSearchTextField(
                  placeholder: "Icons or Screens",
                  placeholderStyle:
                      const TextStyle(fontSize: 15, color: Colors.grey),
                  itemSize: 18,
                  backgroundColor: const Color.fromARGB(255, 247, 246, 246),
                  borderRadius: BorderRadius.circular(0),
                ),
              ),
              SizedBox(
                height: height * 0.006,
              ),
              CategoryWidget(
                onTap: () {},
              ),
              SizedBox(
                height: height * 0.04,
              ),
              popularORnewButtons(),
              Expanded(
                child: SingleChildScrollView(
                  child: popularORnew(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget popularORnew() {
    if (projectType == 'popular') {
      return const PopularProjects();
    } else {
      return const NewProjects();
    }
  }

  Widget popularORnewButtons() {
    return SizedBox(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButtons(
            btext: 'Popular',
            bcolor: projectType == 'popular' ? Palette.black : Colors.grey,
            onTap: () {
              setState(() {
                projectType = 'popular';
              });
            },
            textcolor: projectType == 'popular' ? Palette.black : Colors.grey,
          ),
          TextButtons(
            btext: 'New Projects',
            bcolor: projectType == 'new' ? Palette.black : Colors.grey,
            onTap: () {
              setState(() {
                projectType = 'new';
              });
            },
            textcolor: projectType == 'new' ? Palette.black : Colors.grey,
          ),
        ],
      ),
    );
  }
}
