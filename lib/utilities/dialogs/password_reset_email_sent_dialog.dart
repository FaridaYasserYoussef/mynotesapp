import 'package:flutter/material.dart';
import 'package:mynotes/utilities/dialogs/generic_dialog.dart';

Future<void> showPasswordResetSentDialog(BuildContext context)  {
  return  showGenericDialog<void>(
    context: context,
    title: "Password Reset",
    content: "A reset password email has been sent to your email",
    optionsBuilder: () => {'ok': null},
  );
}
