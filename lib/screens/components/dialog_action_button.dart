import 'package:flutter/material.dart';
import 'package:task_manager_app/utils/theme_constants.dart';

Widget buildDialogActionButton(String text, VoidCallback onTap) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.white,
      textStyle: notesTheme.textTheme.titleSmall?.copyWith(color: Colors.black)
    ),
    onPressed: onTap,
    child: Text(text),
  );
}
