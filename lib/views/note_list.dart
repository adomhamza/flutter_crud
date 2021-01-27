import 'package:flutter/material.dart';
import 'package:flutter_crud/models/notes_for_listing.dart';

class NoteList extends StatelessWidget {
  final notes = [
    NotesForListing(
      noteID: '1',
      createDateTime: DateTime.now(),
      lastEditDateTime: DateTime.now(),
      noteTitle: 'Note  1',
    ),
    NotesForListing(
      noteID: '2',
      createDateTime: DateTime.now(),
      lastEditDateTime: DateTime.now(),
      noteTitle: 'Note  2',
    ),
    NotesForListing(
      noteID: '3',
      createDateTime: DateTime.now(),
      lastEditDateTime: DateTime.now(),
      noteTitle: 'Note  3',
    ),
  ];

  String formatDateTime(DateTime dateTime) =>
      '${dateTime.day}/${dateTime.month}/${dateTime.year}';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'List of Notes',
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: ListView.separated(
        itemBuilder: (_, index) {
          return ListTile(
            title: Text(
              notes[index].noteTitle,
              style: TextStyle(
                color: Theme.of(context).primaryColor,
              ),
            ),
            subtitle: Text(
              'Updated on ${notes[index].lastEditDateTime} ${formatDateTime(notes[index].lastEditDateTime)}',
            ),
          );
        },
        separatorBuilder: (_, __) => Divider(
          height: 1,
          color: Color(0xFF000000),
        ),
        itemCount: notes.length,
      ),
    );
  }
}