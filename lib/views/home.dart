import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mynotes/views/login_view.dart';

import '../firebase_options.dart';
import 'email_verification.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: FutureBuilder(
        future: Firebase.initializeApp(
          options: DefaultFirebaseOptions.currentPlatform,
        ),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          // switch for snapshot state
          // the way to get result of the future state
          // before the connection finish, the loading will be shown
          switch (snapshot.connectionState) {
            case ConnectionState.done:
              // final user = FirebaseAuth.instance.currentUser;
              // if (user?.emailVerified ?? false) {
              //   print("You email is verified");
              // } else {
              //   print("Your email is not verified");
              //   return VerifyEmailView();
              // }
              // return Text('Done..');
              return LoginView();

            default:
              return Text('Loading..');
          }
        },
      ),
    );
  }
}
