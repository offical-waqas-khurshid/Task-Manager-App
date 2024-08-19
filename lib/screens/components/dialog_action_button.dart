import 'package:flutter/material.dart';
import 'package:task_manager_app/utils/theme_constants.dart';

Widget buildDialogActionButton(String text, VoidCallback onTap) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.black,
      textStyle: notesTheme.textTheme.titleSmall?.copyWith(color: Colors.white)
    ),
    onPressed: onTap,
    child: Text(text),
  );
}
