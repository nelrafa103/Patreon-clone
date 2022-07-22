import 'dart:convert';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:patreonclone/models/RickAndMorty/Character.dart';
import 'package:http/http.dart' as http;

class Episode {
  final int id;
  final String name;
  final String airDate;
  final String episode;
  final List<String> characters;
  final String url;
  final String created;

  Episode(
      {required this.id,
      required this.name,
      required this.airDate,
      required this.episode,
      required this.characters,
      required this.url,
      required this.created});

  factory Episode.fromJson(Map<String, dynamic> json) {
    List<String> fakeArray = [];
    for (var i in json['characters']) {
      fakeArray.add(i);
    }
    return Episode(
        id: json['id'],
        name: json['name'],
        airDate: json['air_date'],
        episode: json['episode'],
        characters: fakeArray,
        url: json['url'],
        created: json['created']);
  }
}
