import 'package:flutter/material.dart';
import 'package:ink_capsule/widgets/note.card.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen();
  
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/images/ink_capsule_logo.png', height: 40,),
        actions: [
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/login');
            }
          )
        ],
      ),
      body: ListView(
        children: [
          NoteCard(locked: true),
          NoteCard(locked: false),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/note');
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

