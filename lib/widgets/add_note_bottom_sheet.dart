import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 32, bottom: 16, left: 16, right: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextField(hint: 'title'),
            SizedBox(
              height: 16,
            ),
            CustomTextField(
              maxlines: 5,
              hint: 'content',
            ),
            SizedBox(
              height: 16,
            ),
            CustomButton(),
          ],
        ),
      ),
    );
  }
}
