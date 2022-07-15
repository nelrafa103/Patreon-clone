import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _BottomBar();
}

class _BottomBar extends State<BottomBar> {
  late List<BottomNavigationBarItem>  list = [];
  List<Map<String, dynamic>> listInfo = [
    {
      "label": "Home page",
      "icon": const Icon(Icons.web_asset),
    },
    {"label": "Search", "icon": const Icon(Icons.email_outlined)},
    {"label": "Account", "icon": const Icon(Icons.account_circle_outlined)}
  ];
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: list);
  }

  @override
  void initState() {
    for (var element in listInfo) {
      list.add(BottomNavigationBarItem(
          icon: element['icon'], label: element["label"]));
    }
    super.initState();
  }
}
