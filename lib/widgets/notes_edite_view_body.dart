import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';

class NotesEditeViewBody extends StatelessWidget {
  const NotesEditeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 25,
        ),
        CustomAppBar(
          icon: Icons.check,
          title: 'Edit Notes',
        )
      ],
    );
  }
}
