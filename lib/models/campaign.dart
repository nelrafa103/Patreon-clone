import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';

class Campaign {
  /*final String summary;
  final String createAt;
  final bool isNsfw;*/

 // Campaign({/*this.createAt, this.isNsfw, {required this.summary*/});
  Future<Map<String, dynamic>> _fetchAlbum(int index) async {
    String? patreonUrl = dotenv.env['RICK_MORTY_CHARACTERS'];
    final response = await http.get(Uri.parse("$patreonUrl+'/'+ $index"));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception();
    }
  }
}

class CampaignMedia {
  final String imageUrl;
  final String imageSmallUrl;
  final String mainVideoUrl;
  final String artWork;

  CampaignMedia(
      this.imageUrl, this.imageSmallUrl, this.mainVideoUrl, this.artWork);
}
/*

{
    "data": [
        {
            "attributes": {
                "created_at": "2018-05-04T23:34:08+00:00",
                "creation_name": "online communities",
                "discord_server_id": "1234567890",
                "google_analytics_id": "1234567890",
                "has_rss": true,
                "has_sent_rss_notify": true,
                "image_small_url": "https://example.url",
                "image_url": "https://example.url",
                "is_charged_immediately": false,
                "is_monthly": false,
                "is_nsfw": false,
                "main_video_embed": null,
                "main_video_url": "https://example.url",
                "one_liner": null,
                "patron_count": 2,
                "pay_per_name": "creation",
                "pledge_url": "/bePatron?c=1234560",
                "published_at": "2018-05-09T17:12:01+00:00",
                "rss_artwork_url": "https://example.url",
                "rss_feed_title": "My custom feed",
                "summary": "Putting the internet to work for creators.",
                "thanks_embed": null,
                "thanks_msg": null,
                "thanks_video_url": null
            },
            "id": "1234560",
            "type": "campaign"
        }
    ],
    "meta": {
        "pagination": {
            "total": 1
        }
    }
}


*/