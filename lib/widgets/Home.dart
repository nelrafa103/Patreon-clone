import 'package:cached_network_image/cached_network_image.dart';

import 'package:flutter/material.dart';

import 'package:patreonclone/widgets/appbars/BottomBar.dart';

import 'appbars/TopBar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _Home();
}

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: const BottomBar(),
        appBar: const TopBar(title: "Feed", aditionalWidget: [
          {'icon': Icon(Icons.search)}
        ]),
        body: ListView(children: [
          Card(
            child: SizedBox(
              height: MediaQuery.of(context).size.height / 3,
              width: MediaQuery.of(context).size.width,
              child: Column(children: [
                Flexible(
                    child: Flex(
                  direction: Axis.horizontal,
                  children: [
                    CachedNetworkImage(
                      imageUrl: "",
                      placeholder: (_, __) => const CircularProgressIndicator(),
                      fadeInDuration: const Duration(milliseconds: 0),
                    ),
                    Flex(
                      direction: Axis.vertical,
                      children: [
                        Title(
                            color: Colors.white,
                            child: const Text("Creator name")),
                        const Text("Time since publish")
                      ],
                    )
                  ],
                )),
                Flexible(
                    flex: 2,
                    child: CachedNetworkImage(
                      imageUrl: "",
                      placeholder: (_, __) => const CircularProgressIndicator(),
                      fadeInDuration: const Duration(milliseconds: 0),
                    )),
                Flexible(
                    child: Flex(
                  direction: Axis.horizontal,
                  children: [],
                ))
              ]),
            ),
          )
        ]));
  }

  @override
  void initState() {
    super.initState();
  }
}
