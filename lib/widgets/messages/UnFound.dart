import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UnFound extends StatefulWidget {
  final List<Map<String, dynamic>> optionalElements;

  const UnFound({Key? key, required this.optionalElements}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _UnFound();
}

class _UnFound extends State<UnFound> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          CachedNetworkImage(
            imageUrl: "",
            placeholder: (_, __) => const CircularProgressIndicator(),
            fadeInDuration: const Duration(milliseconds: 0),
          ),
          Title(color: Colors.white, child: const Text("Some data"))
        ],
      ),
    );
  }
}
