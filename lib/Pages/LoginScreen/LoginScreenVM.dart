import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:newyorktimes/Helpers/Routes/Routes.dart';
import 'package:newyorktimes/Pages/LoginScreen/LoginScreenModel.dart';

class LoginScreenVM extends LoginScreenModel {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  Future<void> signOut() async {
    return _firebaseAuth.signOut();
  }

  loginUser(BuildContext context) async {
    final GoogleSignInAccount? login = await GoogleSignIn().signIn();
    if (login == null) return;
    final GoogleSignInAuthentication auth = await login!.authentication;
    final credentials = GoogleAuthProvider.credential(
      accessToken: auth.accessToken,
      idToken: auth.idToken,
    );
    context.pushReplacement(Pages.homeScreen);
    return _firebaseAuth.signInWithCredential(credentials);
  }
}
