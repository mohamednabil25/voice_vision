import 'package:flutter/material.dart';
import 'package:voice_vision/colors.dart';
import 'package:voice_vision/homescreen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Voice Vision',
      theme: ThemeData(scaffoldBackgroundColor: Colorss.gray),
      home: HomeScreen(),
    ),
  );
}
