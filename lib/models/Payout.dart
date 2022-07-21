import 'dart:convert';

import 'package:http/http.dart' as http;

class Payment {
  final String token;
  final List items;
   
  Payment(this.token, this.items);
  Future<http.Response> place_order() {
    return http.post(
      Uri.parse('https://jsonplaceholder.typicode.com/albums'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'title': "",
      }),
    );
  }
}


/*

 curl -v -X POST https://api-m.sandbox.paypal.com/v1/payments/payouts \
-H "Content-Type: application/json" \
-H "Authorization: Bearer <Access-Token>" \
-d '{
  "sender_batch_header": {
    "sender_batch_id": "Payouts_2018_100007",
    "email_subject": "You have a payout!",
    "email_message": "You have received a payout! Thanks for using our service!"
  },
  "items": [
    {
      "recipient_type": "EMAIL",
      "amount": {
        "value": "9.87",
        "currency": "USD"
      },
      "note": "Thanks for your patronage!",
      "sender_item_id": "201403140001",
      "receiver": "receiver@example.com",
      "alternate_notification_method": {
        "phone": {
          "country_code": "91",
          "national_number": "9999988888"
        }
      },
      "notification_language": "fr-FR"
    },
    {
      "recipient_type": "PHONE",
      "amount": {
        "value": "112.34",
        "currency": "USD"
      },
      "note": "Thanks for your support!",
      "sender_item_id": "201403140002",
      "receiver": "91-734-234-1234"
    },
    {
      "recipient_type": "PAYPAL_ID",
      "amount": {
        "value": "5.32",
        "currency": "USD"
      },
      "note": "Thanks for your patronage!",
      "sender_item_id": "201403140003",
      "receiver": "G83JXTJ5EHCQ2"
    }
  ]
}'


**/