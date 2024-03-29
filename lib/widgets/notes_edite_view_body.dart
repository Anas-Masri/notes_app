import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/note_cubit/note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class NotesEditeViewBody extends StatefulWidget {
  const NotesEditeViewBody({super.key, required this.note});

  final NoteModel note;

  @override
  State<NotesEditeViewBody> createState() => _NotesEditeViewBodyState();
}

class _NotesEditeViewBodyState extends State<NotesEditeViewBody> {
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 25,
        ),
        CustomAppBar(
          onPressed: () {
            widget.note.title = title ?? widget.note.title;
            widget.note.subTitle = subTitle ?? widget.note.subTitle;
            widget.note.save();
            BlocProvider.of<NoteCubit>(context).fetchAllNote();
            Navigator.pop(context);
          },
          icon: Icons.check,
          title: 'Edit Notes',
        ),
        const SizedBox(
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              CustomTextField(
                hint: widget.note.title,
                onChanged: (value) {
                  title = value;
                },
              ),
              const SizedBox(
                height: 15,
              ),
              CustomTextField(
                hint: widget.note.subTitle,
                maxlines: 5,
                onChanged: (value) {
                  subTitle = value;
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
