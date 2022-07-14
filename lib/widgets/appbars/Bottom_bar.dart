import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bottom_Bar extends StatefulWidget {
  const Bottom_Bar({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _Bottom_Bar();
}

class _Bottom_Bar extends State<Bottom_Bar> {
  late List<BottomNavigationBarItem> list;
  List<List<dynamic>> listInfo = [
    ["Home page", const Icon(Icons.web_asset), ],
    ["Search", const Icon(Icons.email_outlined)],
    ["Account", const Icon(Icons.account_circle_outlined)]
  ];
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: const <BottomNavigationBarItem>[]);
  }

  @override
  void initState() {
    // for(var element in labels) {
//list.add(BottomNavigationBarItem(icon: Icon(Icons.web)))
    //  }
    super.initState();
  }
}
