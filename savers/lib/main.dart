import 'package:flutter/material.dart';
import 'package:savers/views/home/home_view.dart';

void main() {
  runApp(MaterialApp(
    title: "Savers",
    home: const HomeView(),
    theme: ThemeData(fontFamily: "Pretendard"),
  ));
}
