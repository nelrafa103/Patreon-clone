import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _BottomBar();
}

class _BottomBar extends State<BottomBar> {
  late List<BottomNavigationBarItem> list = [];
  List<Map<String, dynamic>> listInfo = [
    {
      "label": "Home page",
      "icon": const Icon(Icons.web_asset),
      "route": '/home'
    },
    {
      "label": "Search",
      "icon": const Icon(Icons.email_outlined),
      "route": '/messages'
    },
    {
      "label": "Account",
      "icon": const Icon(Icons.account_circle_outlined),
      "route": "/account"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        onTap: (value) => {navigate(value)}, items: list);
  }

  @override
  void initState() {
    for (var element in listInfo) {
      list.add(BottomNavigationBarItem(
          icon: element['icon'], label: element["label"]));
    }
    super.initState();
  }

  void navigate(int option) {
    switch (option) {
      case 0:
        Navigator.pushNamed(context, listInfo[0]["route"]);
        break;
      case 1:
        Navigator.pushNamed(context, listInfo[1]["route"]);
        break;
      case 2:
        Navigator.pushNamed(context, listInfo[2]["route"]);
        break;
    }
  }
}
