import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final int maxLines;
  final void Function(String?)? onSaved;
  const CustomTextField({super.key, required this.hint, required this.maxLines, this.onSaved});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      cursorColor: const Color(0xff62FCD7),
      decoration: InputDecoration(
          hintText: hint,
          border: buildBorder(),
          hintMaxLines: maxLines,
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(const Color(0xff62FCD7)),
          hintStyle: const TextStyle(color: Color(0xff62FCD7))),
      validator: (value) => (value?.isEmpty ?? true) ? "Field is required" : null,
    );
  }

  OutlineInputBorder buildBorder([color = Colors.white]) =>
      OutlineInputBorder(borderSide: BorderSide(color: color), borderRadius: BorderRadius.circular(8));
}
