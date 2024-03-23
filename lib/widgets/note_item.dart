import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/cubits/note_cubit/note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/notes_edite_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({
    super.key,
    required this.note,
  });
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return const NotesEditeView();
            },
          ));
        },
        child: Container(
          padding:
              const EdgeInsets.only(left: 16, top: 24, bottom: 24, right: 16),
          decoration: BoxDecoration(
              color: Color(note.color),
              borderRadius: BorderRadius.circular(18)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: Text(
                  note.title,
                  style: const TextStyle(fontSize: 25, color: Colors.black),
                ),
                subtitle: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      note.subTitle,
                      style: TextStyle(
                          fontSize: 18, color: Colors.black.withOpacity(.5)),
                    ),
                  ],
                ),
                trailing: IconButton(
                  onPressed: () {
                    note.delete();

                    BlocProvider.of<NoteCubit>(context).fetchAllNote();
                  },
                  icon: const Icon(
                    Icons.delete,
                    size: 30,
                  ),
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 24, top: 10),
                child: Text(
                  note.data,
                  style: TextStyle(
                      fontSize: 14, color: Colors.black.withOpacity(.5)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
