import 'package:flutter/material.dart';
import 'package:note_app_2/ui/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(child: AddNoteForm()),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  String? title, content;
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(height: 32),
          CustomTextField(onSaved: (value) => title = value, hint: 'Title', maxLines: 1),
          const SizedBox(height: 16),
          CustomTextField(onSaved: (value) => content = value, hint: 'Content', maxLines: 5),
          const SizedBox(height: 32),
          _buildCustomButton(
              onTap: () => (formKey.currentState!.validate())
                  ? formKey.currentState!.save()
                  : setState(() => autovalidateMode = AutovalidateMode.always)),
          const SizedBox(height: 16)
        ],
      ),
    );
  }

  GestureDetector _buildCustomButton({void Function()? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        // take available width
        height: 55,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(color: const Color(0xff62FCD7), borderRadius: BorderRadius.circular(8)),
        child: const Center(
          child: Text('Add', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
