import 'package:flutter/material.dart';
import 'package:notes_app/widgets/note_item.dart';

class ListNoteItem extends StatelessWidget {
  const ListNoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 4),
          child: NoteItem(),
        );
      },
    );
  }
}