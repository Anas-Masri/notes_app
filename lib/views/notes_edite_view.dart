import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/notes_edite_view_body.dart';

class NotesEditeView extends StatelessWidget {
  const NotesEditeView({super.key, required this.note});

  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: NotesEditeViewBody(note: note),
      ),
    );
  }
}
