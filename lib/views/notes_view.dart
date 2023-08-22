import 'package:flutter/material.dart';

enum MenuOption{logout}
class NotesView extends StatelessWidget {
  const NotesView({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notes'),
        actions: [
          
        ],
      ),
      body: Column(
        children: [
          Text("Hello world"),
        ],
      ),
    );
  }
}
