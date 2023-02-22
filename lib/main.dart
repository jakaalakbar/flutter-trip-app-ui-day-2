import 'package:flutter/material.dart';
import 'package:trip_app_ui/pages/home_page.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Nunito'),
      home: const HomePage(),
    ),
  );
}
