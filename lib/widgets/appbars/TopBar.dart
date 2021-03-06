import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopBar extends StatefulWidget implements PreferredSizeWidget {
  final String title;
  final List<Map<String, dynamic>> aditionalWidget;
  const TopBar({Key? key, required this.title, required this.aditionalWidget})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _TopBar();

  @override
  // TODO: implement preferredSize
  final preferredSize = const Size.fromHeight(kToolbarHeight);
}

class _TopBar extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Icon(Icons.payment),
      title: Text(widget.title),
      actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
    );
  }
}
