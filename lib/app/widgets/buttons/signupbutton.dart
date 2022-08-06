import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignupButton extends StatelessWidget {
  SignupButton();
  // final User user;

  Future<void> signInWithGoogle() async {
    //  await Authentification().signInWithGoogle();
  }

  Future<void> signOut() async {
    //  await Authentification().signOut();
  }

  @override
  Widget build(BuildContext context) => IconButton(
      icon: const Icon(
        FontAwesomeIcons.google,
        color: Colors.black,
      ),
      onPressed: () {
        /*  if (user == null) {
            signInWithGoogle();
          } else {
            signOut();
          }*/
      });
}
