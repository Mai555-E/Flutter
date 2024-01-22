import 'package:flutter/material.dart';

import 'widgets/custom_text_field.dart';
import 'widgets/custom_body.dart';

class EditNoteScreen extends StatelessWidget {
  const EditNoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomBody(
        icon: Icons.check,
        widgets: [
          CustomTextField(hint: 'Edit Note', maxLines: 2),
          SizedBox(height: 16),
          CustomTextField(hint: 'Content', maxLines: 8),
        ],
      ),
    );
  }
}
