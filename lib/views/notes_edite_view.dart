import 'package:flutter/material.dart';
import 'package:notes_app/widgets/notes_edite_view_body.dart';

class NotesEditeView extends StatelessWidget {
  const NotesEditeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 16),
        child: NotesEditeViewBody(),
      ),
    );
  }
}
