import 'package:flutter/material.dart';

class Paybutton extends StatefulWidget {
  final String text;
  final Icon icon;
  final void action;
  const Paybutton(
      {Key? key, required this.text, required this.icon, this.action})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _Paybutton();
}

class _Paybutton extends State<Paybutton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {widget.action;},
        child: Wrap(
          children: [widget.icon, Text(widget.text)],
        ));
  }
}
