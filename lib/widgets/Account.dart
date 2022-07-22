import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:patreonclone/widgets/appbars/BottomBar.dart';

import '../tools/Hooks.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _Account();
}

class _Account extends State<Account> {
  List<Option> widgetlist = [];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> list = [
      {
        'title': 'Mis suscripciones',
        'icon': const Icon(Icons.subscriptions),
        'url': '/suscriptions'
      },
      {
        "title": 'Configuracion',
        'icon': const Icon(Icons.settings),
        'url': '/configuration'
      },
      {
        'title': 'Colabora',
        'icon': const Icon(Icons.question_mark),
        'url': '/home'
      },
      {
        'title': 'Cerrar sesion',
        'icon': const Icon(Icons.logout),
        'url': '/home'
      }
    ];
    for (var element in list) {
      widgetlist.add(Option(
        title: element['title'],
        icon: element['icon'],
        url: element['url'],
      ));
    }
    return Scaffold(
      bottomNavigationBar: const BottomBar(),
      body: Stack(
        children: [
          Expanded(
              child: ListView(
            children: widgetlist,
          ))
        ],
      ),
    );
  }
}

class Option extends StatefulWidget {
  final String title;
  final Icon icon;
  final String url;
  const Option(
      {Key? key, required this.title, required this.icon, required this.url})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _Option();
}

class _Option extends State<Option> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.title),
      leading: widget.icon,
      onTap: () {
        redirectTo(url: widget.url, context: context);
      },
    );
  }
}
