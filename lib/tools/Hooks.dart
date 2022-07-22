import 'dart:js';

import 'package:flutter/material.dart';

void redirectTo({required String url, required BuildContext context}) {
  Navigator.pushNamed(context, url);
}
