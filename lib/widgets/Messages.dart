import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:patreonclone/widgets/appbars/BottomBar.dart';
import 'package:patreonclone/widgets/messages/UnFound.dart';

class Messages extends StatefulWidget {
  const Messages({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _Messages();
}

/*This widget probably wil be empty or without functional work */
class _Messages extends State<Messages> {
  List<Chat> chat_list = [];
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
                children: [if(chat_list.isEmpty)...{
                  const UnFound(optionalElements: [])
                }],
              ))
        ],
      ),
    );
  }
}

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _Chat();
}

class _Chat extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text("data"),
      leading: CachedNetworkImage(
        imageUrl: "",
        placeholder: (_, __) => const CircularProgressIndicator(),
        fadeInDuration: const Duration(milliseconds: 0),
      ),
    );
  }
}
