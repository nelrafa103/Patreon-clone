import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:patreonclone/widgets/appbars/BottomBar.dart';

class Messages extends StatefulWidget {
  const Messages({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _Messages();
}
/*This widget probably wil be empty or without functional work */
class _Messages extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: const BottomBar(),
      body: Stack(
        alignment: AlignmentDirectional.topStart,
        children: [
          Positioned(
              top: 20,
              child: Flex(
                direction: Axis.horizontal,
                children: [],
              ))
        ],
      ),
    );
  }
}
