import 'package:aplenda_ingles/pages/home_page.dart';
import 'package:aplenda_ingles/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      scaffoldBackgroundColor: Color(0xfff5e9b9),
      primaryColor: Color(0xff795548),
    ),
    debugShowCheckedModeBanner: false,
    initialRoute: Routes.HOME_PAGE,
    routes: {
      Routes.HOME_PAGE: (ctx) => HomePage(),
    },
  ));
  SystemChrome.setEnabledSystemUIOverlays([]);
}
