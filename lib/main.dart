import 'package:flutter/material.dart';
import 'package:aviv_index/pages/main_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AvivNet',
      home: MainPage(),
    );
  }
}

void main () => {runApp(App())};
