import 'package:flutter/material.dart';

class NoteModify extends StatelessWidget {
  final String noteID;
  NoteModify({this.noteID});
  bool get isEditing => noteID != null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          isEditing ? 'Edit Note' : 'Create Note',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                hintText: 'Note Title',
              ),
            ),
            Container(
              height: 8.0,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Note Content',
              ),
            ),
            Container(
              height: 16.0,
            ),
            SizedBox(
              width: double.infinity,
              height: 35.0,
              child: RaisedButton(
                onPressed: () {
                  // Navigator.pop(context); This code also works in navigating back
                  Navigator.of(context).pop();
                },
                color: Theme.of(context).primaryColor,
                child: Text(
                  'Submit',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
