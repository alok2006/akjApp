import 'package:flutter/material.dart';

final myAppbar = AppBar(
  leading: Icon(Icons.account_box),
  centerTitle: true,
  title: Text("AkjApp"),
);

final myTheme = ThemeData.dark().copyWith(
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(Colors.purple),
      padding: MaterialStateProperty.all(EdgeInsets.all(15)),
      // textStyle:
    ),
  ),
);
