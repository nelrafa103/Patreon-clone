import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:patreonclone/widgets/appbars/BottomBar.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _Account();
}

class _Account extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomBar(),
      body: Stack(
        children: [
          Positioned(
              child: ListView(
            children: [],
          ))
        ],
      ),
    );
  }
}

class Option extends StatefulWidget {
  const Option({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _Option();
}

class _Option extends State<Option> {
  @override
  Widget build(BuildContext context) {
    return const ListTile(
      title: Text("Some text"),
      leading: Icon(Icons.ac_unit),
    );
  }
}
