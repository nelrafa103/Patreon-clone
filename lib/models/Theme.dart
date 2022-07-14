import 'package:flutter/material.dart';

ThemeData theme = ThemeData(
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
            alignment: Alignment.center,
            textStyle: MaterialStateProperty.all<TextStyle>(
                
                const TextStyle(fontSize: 16,)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            )))),
    textTheme: const TextTheme(
        bodyText1: TextStyle(fontSize: 14),
        headline1: TextStyle(fontSize: 64),
        headline6: TextStyle(fontSize: 16)));
