class Item {
  final String recipient_type;
  final Map<String, String> amount;
  final String note;
  final String sender_item_id;
  final String receiver;
  final Map<String, String> alternate_notification_method;
  final String notification_language;

  Item(this.recipient_type, this.amount, this.note, this.sender_item_id, this.receiver, this.alternate_notification_method, this.notification_language);
}
