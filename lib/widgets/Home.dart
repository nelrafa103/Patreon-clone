import 'dart:convert';
import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:patreonclone/models/RickAndMorty/EPISODE.dart';

import 'package:patreonclone/widgets/appbars/BottomBar.dart';
import 'package:http/http.dart' as http;

import 'appbars/TopBar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _Home();
}

/*
 Si no hay respuesta por parte de IT hare uso de 
 la api de rick and morty link : https://rickandmortyapi.com/documentation/
*/
class _Home extends State<Home> {
  late Future<List<Episode>> EpisodeList = [] as Future<List<Episode>>;
  List<Section> widgetList = [];
  int counter = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: const BottomBar(),
        appBar: const TopBar(title: "Feed", aditionalWidget: [
          {'icon': Icon(Icons.search)}
        ]),
        body: ListView(
          children: widgetList,
        ));
  }

  @override
  void initState() {
    super.initState();
    for (int i = 1; i < 5; i++) {
      widgetList.add(Section(index: i));
    }
    counter++;
  }
}

class Section extends StatefulWidget {
  final int index;
  const Section({Key? key, required this.index}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _Section();
}

class _Section extends State<Section> {
  late Future<Episode> currentEpisode;

  @override
  void initState() {
    super.initState();
    var x = dotenv.env['RICK_MORTY_EPISODE'];
    debugPrint(x);
    currentEpisode = getEpisode(widget.index);
  }

  Future<Episode> getEpisode(int index) async {
    String? url = dotenv.env['RICK_MORTY_EPISODE'] ?? "Some direciton";
    final response = await http.get(Uri.parse("$url$index"));
    if (response.statusCode == 200) {
      debugPrint("Good response");
      return Episode.fromJson(jsonDecode(response.body));
    } else {
      debugPrint("Bad response");
      throw Exception("Failed to load episodes");
    }
  }

// ${snapshot.data!.characters[0]
  @override
  Widget build(BuildContext context) {
    debugPrint("Print card");
    return Card(
        child: FutureBuilder<Episode>(
            future: currentEpisode,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return SizedBox(
                  height: MediaQuery.of(context).size.height / 3,
                  width: MediaQuery.of(context).size.width,
                  child: Column(children: [
                    Flexible(
                        child: Flex(
                      direction: Axis.horizontal,
                      children: [
                        Flexible(
                            flex: 2,
                            child: CachedNetworkImage(
                              imageUrl: "",
                              placeholder: (_, __) =>
                                  const CircularProgressIndicator(),
                              fadeInDuration: const Duration(milliseconds: 0),
                            )),
                        Flexible(
                            flex: 3,
                            child: Flex(
                              direction: Axis.vertical,
                              children: [
                                Title(
                                    color: Colors.white,
                                    child: Text(snapshot.data!.name)),
                                Text(snapshot.data!.airDate)
                              ],
                            ))
                      ],
                    )),
                    Flexible(
                        flex: 2,
                        child: CachedNetworkImage(
                          imageUrl: "",
                          placeholder: (_, __) =>
                              const CircularProgressIndicator(),
                          fadeInDuration: const Duration(milliseconds: 0),
                        )),
                    Flexible(
                        child: Flex(
                      direction: Axis.horizontal,
                      children: [],
                    ))
                  ]),
                );
              } else if (snapshot.hasError) {
                return const Text("There is a error");
              }
              return const Text('ok');
            }));
  }
}
