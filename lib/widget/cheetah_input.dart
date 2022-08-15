import 'package:flutter/material.dart';

class CheetahInput extends StatelessWidget {
  final String labelText;
   final Function onSaved;
  const CheetahInput({
    Key? key,
    required this.labelText,
    required this.onSaved,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          labelText: labelText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          floatingLabelBehavior: FloatingLabelBehavior.never),
          initialValue: '',
          validator: (value) {
            if (value!.isEmpty) {
              return '$labelText is required';
            }
            return null;
          },
          onSaved: (String? value) {
            onSaved(value);
          },
    );
  }
}
