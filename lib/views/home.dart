import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mynotes/views/login_view.dart';
import 'package:mynotes/views/notes_view.dart';

import '../firebase_options.dart';
import 'verify_email_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      ),
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        // switch for snapshot state
        // the way to get result of the future state
        // before the connection finish, the loading will be shown
        switch (snapshot.connectionState) {
          case ConnectionState.done:
            final user = FirebaseAuth.instance.currentUser;
            if (user != null) {
              if (user.emailVerified) {
                return NotesView();
              }else {
                return VerifyEmailView();
              }
            }  else {
              return LoginView();
            }

          default:
            return CircularProgressIndicator();
        }
      },
    );
  }
}
