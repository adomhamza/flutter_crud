import 'package:flutter/material.dart';
import 'package:flutter_crud/models/notes_for_listing.dart';
import 'package:flutter_crud/views/note_modify.dart';

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
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => NoteModify()));
        },
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
              'Updated on ${formatDateTime(notes[index].lastEditDateTime)}',
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => NoteModify(
                        noteID: notes[index].noteID,
                      )));
            },
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
