import 'package:flutter/material.dart';
import 'package:mynotes/utilities/dialogs/generic_dialog.dart';

Future<bool> showDeleteDialog(BuildContext context) {
  return showGenericDialog(
    context: context,
    title: "Delete",
    content: "Are you sure you want to delete?",
    optionsBuilder: () => {'cancel': false, 'Delete': true},
  ).then((value) => value ?? false);
}
