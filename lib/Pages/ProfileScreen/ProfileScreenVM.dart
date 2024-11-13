import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:newyorktimes/Helpers/Routes/Routes.dart';
import 'package:newyorktimes/Pages/ProfileScreen/ProfileScreenModel.dart';

class ProfileScreenVM extends ProfileScreenModel {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  Future<void> signOut(BuildContext context) async {
    context.pushReplacement(Pages.loginScreen);
    return _firebaseAuth.signOut();
  }
}
