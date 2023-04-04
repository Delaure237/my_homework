import 'package:flutter/material.dart';
import 'package:home_screen/categories.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: FilmCategories(),
    );
  }
}
class CardItem{
  final String text;
  const CardItem({
    required this.text,
  });
}
List<CardItem> items = [
  CardItem(
      text:"All"
  ),
  CardItem(
      text:"Actions"
  ),
  CardItem(
      text:"Romance"
  ),
  CardItem(
      text:"Comedy"
  ),
  CardItem(
      text:"Romance"
  ),
  CardItem(
      text:"fantasme"
  ),
  CardItem(
      text:"Sport"
  ),
];
