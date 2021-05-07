import 'package:flutter/material.dart';
import "package:places/ui/screen/sight_list_screen.dart";
import 'package:places/mocks.dart';
import 'package:places/ui/screen/sight_details.dart';



void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Places',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFFFFFFF),
        // primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        // backgroundColor: Colors.grey,
      ),
      home: SightListScreen(),
    );
  }
}
