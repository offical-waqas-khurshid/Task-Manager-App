import 'package:flutter/material.dart';
import 'package:task_manager_app/utils/theme_constants.dart';
import '../../utils/color_constants.dart';
import 'dialog_action_button.dart';

Future<bool> showDeleteAllNotesDialog(BuildContext context) async {
  return await showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title:  Text('Delete', style: notesTheme.textTheme.titleSmall?.copyWith(color: Colors.black)),
        content: const Text(
          'Do you really want to delete all the notes?',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          buildDialogActionButton(
            'No',
            () => Navigator.pop(context, false),
          ),
          buildDialogActionButton(
            'Yes',
            () => Navigator.pop(context, true),
          ),
        ],
      );
    },
  );
}
