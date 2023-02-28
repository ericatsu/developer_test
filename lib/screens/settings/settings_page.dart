import 'package:flutter/material.dart';

import '../../shared/exports.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    //final double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: height,
              color: Palette.background,
            ),
            Column(
              children: [
                const TopWidget(),
                Container(
                  height: height * 0.02,
                  color: Colors.transparent,
                ),
                Container(
                  height: height * 0.10,
                  color: Palette.white,
                  child: const SettingTile(
                    title: 'Creator Studio',
                    imagelogo: Icon(
                      CupertinoIcons.add,
                      color: Colors.black,
                    ),
                    icon: Icon(
                      CupertinoIcons.forward,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  height: height * 0.05,
                  color: Colors.transparent,
                ),
                Container(
                  height: height * 0.522,
                  color: Palette.white,
                  child: Column(
                    children: [
                      const SettingTile(
                        title: 'Home Logo',
                        imagelogo: Icon(
                          CupertinoIcons.home,
                          color: Colors.black,
                        ),
                        icon: Icon(
                          CupertinoIcons.forward,
                          color: Colors.black,
                        ),
                      ),
                      SettingTile(
                        onTap: () {
                          Get.to(const EcobankSettings());
                        },
                        title: 'Ecobank ATMs in Ghana',
                        imagelogo: const Icon(CupertinoIcons.home),
                        icon: const Icon(
                          CupertinoIcons.forward,
                          color: Colors.black,
                        ),
                      ),
                      const SettingTile(
                        title: 'Top African Movies on Netflix',
                        imagelogo: Icon(CupertinoIcons.home),
                        icon: Icon(
                          CupertinoIcons.forward,
                          color: Colors.black,
                        ),
                      ),
                      const SettingTile(
                        title: 'Project Management Institute',
                        imagelogo: Icon(CupertinoIcons.home),
                        icon: Icon(
                          CupertinoIcons.forward,
                          color: Colors.black,
                        ),
                      ),
                      const SettingTile(
                        title: 'Windows 11 Drivers',
                        imagelogo: Icon(CupertinoIcons.home),
                        icon: Icon(
                          CupertinoIcons.forward,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
