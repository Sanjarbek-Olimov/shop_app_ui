import 'package:flutter/material.dart';
import 'package:shop_app_ui/pages/home_page.dart';
import 'package:shop_app_ui/pages/home_page_2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.black,
      ),
      home: HomePage2(),
      routes: {
        HomePage.id: (context) => HomePage(),
        HomePage2.id: (context) => HomePage2(),
      }
    );
  }
}