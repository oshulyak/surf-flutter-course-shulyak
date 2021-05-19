import 'package:flutter/material.dart';
import 'package:places/mocks.dart';
import 'package:places/ui/screen/sight_card.dart';
// import 'package:places/ui/screen/sight_details.dart';

class SightListScreen extends StatefulWidget {
  final String title = 'Places';
  _SightListScreenState createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
            toolbarHeight: 100,
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            title: Text('Список\nинтересных мест',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                    fontWeight: FontWeight.bold)),
            actions: []),
        body: SingleChildScrollView(
            child: Column(
          children: [
            // SightDetails(mocks[2]),     // DETAILS

            SightCard(
              // LIST
              mocks[0],
            ),
            SightCard(
              mocks[1],
            ),
            SightCard(
              mocks[0],
            ),
            SightCard(
              mocks[1],
            ),
          ],
        )));
  }
}
