import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mynotes/main.dart';
import '../constants/routes.dart';

class VerifyEmailView extends StatefulWidget {
  const VerifyEmailView({super.key});

  @override
  State<VerifyEmailView> createState() => _VerifyEmailViewState();
}

class _VerifyEmailViewState extends State<VerifyEmailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        title: const Text("Verify Your Email"),
      ),
      body: Column(
        children: [
          const Text(
              "We've sent you a verification email, please open it to verify your account."),
          const Text(
              "If you haven't received a verification email, press the button below."),
          TextButton(
            onPressed: () async {
              final user = FirebaseAuth.instance.currentUser;
              await user
                  ?.sendEmailVerification(); //since its a future you need to await on it
            },
            child: const Text("Send Email Verification"),
          ),
          TextButton(
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
              Navigator.of(context)
                  .pushNamedAndRemoveUntil(registerRoute, (route) => false);
            },
            child: const Text("restart"),
          )
        ],
      ),
    );
  }
}
