import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:async';

import 'package:http/http.dart' as http;

class Home_Scren extends StatefulWidget {
  const Home_Scren({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}

class _Home_Screen extends State<Home_Scren> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SliverList(
      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
        return Card();
      }),
    ));
  }

  @override
  void initState() {
    super.initState();
  }

  Future<Map<String, dynamic>> fetchAlbum() async {
    final response = await http
        .get(Uri.parse(''));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception();
    }
  }
}
