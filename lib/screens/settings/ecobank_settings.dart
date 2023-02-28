import 'package:flutter/material.dart';

import '../../shared/exports.dart';

class EcobankSettings extends StatefulWidget {
  const EcobankSettings({super.key});

  @override
  State<EcobankSettings> createState() => _EcobankSettingsState();
}

class _EcobankSettingsState extends State<EcobankSettings> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: height * 0.05,
          elevation: 0,
          backgroundColor: Palette.white,
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(
                CupertinoIcons.back,
                color: Palette.black,
              )),
        ),
        body: Stack(
          children: [
            Container(
              height: height,
              width: width,
              color: Palette.background,
            ),
            Column(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 4),
                  height: height * 0.07,
                  color: Palette.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(CupertinoIcons.cube_box_fill),
                      SizedBox(
                        width: width * 0.025,
                      ),
                      const Text(
                        'Ecobank ATMs in Ghana',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        width: width * 0.13,
                      ),
                      const ToggleSwitch(),
                    ],
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          height: height * 0.018,
                          color: Colors.transparent,
                        ),
                        Container(
                          height: height * 0.145,
                          color: Palette.white,
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Column(
                              children: const [
                                SettingTile(
                                  title: 'Pin To Home',
                                  imagelogo: Icon(
                                    CupertinoIcons.pin_fill,
                                    color: Colors.red,
                                  ),
                                  icon: ToggleSwitch(),
                                ),
                                SettingTile(
                                  title: 'Snooze Screen',
                                  imagelogo: Icon(
                                    CupertinoIcons.bell_solid,
                                    color: Palette.black,
                                  ),
                                  icon: ToggleSwitch(),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: height * 0.05,
                          color: Colors.transparent,
                        ),
                        Container(
                          height: height * 0.34,
                          color: Palette.white,
                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Column(
                              children: [
                                const SettingTile(
                                  title: 'Accra Central',
                                  imagelogo: Icon(
                                    CupertinoIcons.square_righthalf_fill,
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
                                  title: 'Ridge',
                                  imagelogo: const Icon(
                                    CupertinoIcons.square_righthalf_fill,
                                    color: Colors.black,
                                  ),
                                  icon: const Icon(
                                    CupertinoIcons.forward,
                                    color: Colors.black,
                                  ),
                                ),
                                const SettingTile(
                                  title: 'Ring Road West',
                                  imagelogo: Icon(
                                    CupertinoIcons.square_righthalf_fill,
                                    color: Colors.black,
                                  ),
                                  icon: Icon(
                                    CupertinoIcons.forward,
                                    color: Colors.black,
                                  ),
                                ),
                                const SettingTile(
                                  title: 'Tesano',
                                  imagelogo: Icon(
                                    CupertinoIcons.square_righthalf_fill,
                                    color: Colors.black,
                                  ),
                                  icon: Icon(
                                    CupertinoIcons.forward,
                                    color: Colors.black,
                                  ),
                                ),
                                const SettingTile(
                                  title: 'Ecobank ATMs in Nigeria',
                                  imagelogo: Icon(
                                    CupertinoIcons.square_righthalf_fill,
                                    color: Colors.black,
                                  ),
                                  icon: Icon(
                                    CupertinoIcons.forward,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: height * 0.05,
                          color: Colors.transparent,
                        ),
                        Container(
                          height: height * 0.146,
                          color: Palette.white,
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Column(
                              children: const [
                                SettingTile(
                                  title: 'Rate Screen',
                                  imagelogo: Icon(
                                    CupertinoIcons.star_circle,
                                    color: Colors.amber,
                                  ),
                                  icon: null,
                                ),
                                Divider(
                                  color: Palette.black,
                                  height: 1,
                                  indent: 62,
                                  endIndent: 28,
                                ),
                                SettingTile(
                                  title: 'Share Screen',
                                  imagelogo: Icon(
                                    Icons.share,
                                    color: Palette.black,
                                  ),
                                  icon: null,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: height * 0.018,
                          color: Colors.transparent,
                        ),
                        Container(
                          height: height * 0.146,
                          color: Palette.white,
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Column(
                              children: const [
                                SettingTile(
                                  title: 'Message Admin',
                                  imagelogo: Icon(
                                    CupertinoIcons.chat_bubble,
                                    color: Palette.black,
                                  ),
                                  icon: null,
                                ),
                                Divider(
                                  color: Palette.black,
                                  height: 1,
                                  indent: 62,
                                  endIndent: 28,
                                ),
                                SettingTile(
                                  title: 'Report Screen',
                                  imagelogo: Icon(
                                    Icons.report,
                                    color: Palette.black,
                                  ),
                                  icon: null,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: height * 0.05,
                          color: Colors.transparent,
                        ),
                        Container(
                          height: height * 0.08,
                          color: Palette.white,
                          child: const Padding(
                            padding: EdgeInsets.all(6.0),
                            child: SettingTile(
                              title: 'Remove',
                              imagelogo: Icon(
                                CupertinoIcons.chat_bubble,
                                color: Colors.red,
                              ),
                              icon: null,
                            ),
                          ),
                        ),
                        Container(
                          height: height * 0.3,
                          color: Colors.transparent,
                          child: const BottomWidget(),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        bottomNavigationBar: NavPage(),
      ),
    );
  }
}
