import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:patreonclone/widgets/appbars/BottomBar.dart';

class Configuration extends StatefulWidget {
  const Configuration({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _Configuration();
}

class _Configuration extends State<Configuration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomBar(),
      body: Stack(children: []),
    );
  }
}
