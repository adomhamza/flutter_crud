import 'package:flutter_crud/models/notes_for_listing.dart';

class NotesService {
  List<NotesForListing> getNotesList() {
    return [
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
  }
}
