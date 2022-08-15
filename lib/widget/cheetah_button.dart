import 'package:flutter/material.dart';

class CheetahButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  const CheetahButton({Key? key, required this.text, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          padding: const EdgeInsets.all(16),
          elevation: 8,
          backgroundColor: Theme.of(context).primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        // ignore: sort_child_properties_last
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
        onPressed: (() => onPressed()),
      ),
    );
  }
}
