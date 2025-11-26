import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/edit_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: CustomAppBar(
      //     onPressed: (){},
      //     title: 'Edit Note', icon: Icons.check),
      // ),
      body: EditNoteViewBody(note: note),
    );
  }
}
