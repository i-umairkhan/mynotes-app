import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class VedifyEmailView extends StatelessWidget {
  const VedifyEmailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Verify Email'),
      ),
      body: Column(
        children: [
          const Text('Please Verify Your Email Bu Clicking Button Below'),
          TextButton(
            onPressed: () async {
              print(FirebaseAuth.instance.currentUser);
              final user = FirebaseAuth.instance.currentUser;
              await user?.sendEmailVerification();
            },
            child: const Text('Send Verification Email'),
          )
        ],
      ),
    );
  }
}
