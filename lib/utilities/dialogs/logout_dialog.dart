import 'package:flutter/material.dart';
import 'package:mynotes/utilities/dialogs/generic_dialog.dart';

Future<bool> showLogoutDialog(BuildContext context) {
  return showGenericDialog<bool>(
    context: context,
    title: "Logout Alert",
    content: "Are You sure you want to logout?",
    optionsBuilder: () => {"cancel": false, "Logout": true},
  ).then((value) => value ?? false);
}
