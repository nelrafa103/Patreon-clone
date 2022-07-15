import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';

class Campaign {
  Future<Map<String, dynamic>> _fetchAlbum() async {
    String? patreonUrl = dotenv.env['CAMPAIGN_API'];
    final response = await http.get(Uri.parse("$patreonUrl"));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception();
    }
  }
}
