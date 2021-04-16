import 'package:flutter/material.dart';

class SightListScreen extends StatefulWidget {
  @override
  final String title = 'Places';
  _SightListScreenState createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(icon: Icon(Icons.alarm), onPressed: () => print('Alarm!'))
        ],
        bottom: PreferredSize(
          child: Text('bottom'),
          preferredSize: Size.fromHeight(10),
        ),
      ),

      drawer: Container(
        color: Colors.grey,
        width: 250,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(color: Colors.blue),
            ),
            ListTile(title: Text('item 1')),
            ListTile(title: Text('item 2')),
            ListTile(title: Text('item 3')),
          ],
        ),
      ),

      body: Column(
        children: [
          Text('Some text'),
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: 'Enter some text'),
          )
        ],
      ),
      // body: getBody('input text'),

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
