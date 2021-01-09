import 'package:flutter/material.dart';
import 'package:zefyr/zefyr.dart';

class NoteScreen extends StatefulWidget {
  @override
  _NoteScreenState createState() => _NoteScreenState();
}

class _NoteScreenState extends State<NoteScreen> {

  ZefyrController _zefyrController = ZefyrController();
  FocusNode _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.calendar_today),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Title',
                labelStyle: TextStyle(fontSize: 25),
                floatingLabelBehavior: FloatingLabelBehavior.never,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(style: BorderStyle.none)
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(style: BorderStyle.none)
                )
              ),
              style: TextStyle(
                fontSize: 25
              )
            ),
            Expanded(
              child: ZefyrEditor(
                controller: _zefyrController,
                focusNode: _focusNode,
              ),
            ),
            ZefyrToolbar.basic(controller: _zefyrController,)
          ],
        ),
      )
    );
  }
}