import 'package:flutter/material.dart';

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
          title: Text(
            "Список\nинтересных мест",
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 34,
            ),
          ),
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          actions: []),

      body: Center(
        child: Container(
          color: Colors.yellow,
          width: double.infinity,
          height: 50,
          child: RichText(
            textAlign: TextAlign.end,
            text: TextSpan(
                text: 'Short Text',
                style: TextStyle(
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text: 'Text Rich',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 20,
                    ),
                  ),
                ]),
            maxLines: 1,
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () => print('Action'),
        child: Icon(Icons.add),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.mail), label: 'Messages'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}