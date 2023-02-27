import 'package:flutter/cupertino.dart';

class ToggleSwitch extends StatefulWidget {
  const ToggleSwitch({super.key});

  @override
  State<ToggleSwitch> createState() => _ToggleSwitchState();
}

class _ToggleSwitchState extends State<ToggleSwitch> {
  bool state = true;
  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 0.6,
      child: CupertinoSwitch(
        value: state,
        onChanged: (value) {
          state = value;
          setState(() {
          });
        },
      ),
    );
  }
}
