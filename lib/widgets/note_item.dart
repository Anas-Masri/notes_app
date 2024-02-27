import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/views/notes_edite_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({
    super.key,
  });

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
              color: const Color(0xfffece84),
              borderRadius: BorderRadius.circular(18)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: const Text(
                  'Flutter Tips',
                  style: TextStyle(fontSize: 25, color: Colors.black),
                ),
                subtitle: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Bulild your career with tharwat samy',
                      style: TextStyle(
                          fontSize: 18, color: Colors.black.withOpacity(.5)),
                    ),
                  ],
                ),
                trailing: const FaIcon(
                  FontAwesomeIcons.trash,
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 24, top: 10),
                child: Text(
                  'MAY 21 , 2022',
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
