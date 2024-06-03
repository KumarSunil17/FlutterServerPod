import 'package:flutter/material.dart';
import 'package:flutter_server_pod_flutter/main.dart';
import 'package:flutter_server_pod_flutter/src/serverpod_client.dart';
import 'package:serverpod_auth_email_flutter/serverpod_auth_email_flutter.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Dialog(
          child: Container(
            width: 260,
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SignInWithEmailButton(
                  caller: client.modules.auth,
                  onSignedIn: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const MyHomePage(title: "Test")));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
