import 'package:flutter/material.dart';
import 'package:patreonclone/models/Theme.dart';

import '../../models/Button.dart';

class Rounded_Button extends StatefulWidget {
  late Button button;

  Rounded_Button({required this.button, Key? key}) : super(key: key);
  @override
  _Rounded_ButtonState createState() => _Rounded_ButtonState();
}

class _Rounded_ButtonState extends State<Rounded_Button>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 50,
        width: double.infinity,
        child: ElevatedButton(
          style: theme.elevatedButtonTheme.style,
          onPressed: () {
            Navigator.pushNamed(context, widget.button.url);
          },
          child: Text(widget.button.text),
        ));
  }
}
