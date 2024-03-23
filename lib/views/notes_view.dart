import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/cubits/note_cubit/note_cubit.dart';
import 'package:notes_app/widgets/add_note_bottom_sheet.dart';
import 'package:notes_app/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        backgroundColor: Colors.transparent,
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            context: context,
            builder: (context) {
              return const Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: AddNoteBottomSheet(),
              );
            },
          );
        },
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
              color: kPrimaryColor, borderRadius: BorderRadius.circular(50)),
          child: const Icon(
            Icons.add,
            color: Colors.black,
          ),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(vertical: 16),
        child: NotesViewBody(),
      ),
    );
  }
}
