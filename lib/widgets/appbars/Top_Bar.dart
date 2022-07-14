import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Top_Bar extends StatefulWidget implements PreferredSizeWidget {
  const Top_Bar({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _Top_Bar();
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();
}

class _Top_Bar extends State<Top_Bar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: const [
        Text("display some data"),
        Text("display some data"),
        Text("display some data"),
        Text("display some data"),
        Text("display some data"),
      ],
    );
  }
}
