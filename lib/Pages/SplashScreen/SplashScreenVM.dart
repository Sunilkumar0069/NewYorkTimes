// ignore_for_file: prefer_const_constructors, use_build_context_synchronously

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:newyorktimes/Helpers/Routes/Routes.dart';
import 'package:newyorktimes/Pages/SplashScreen/SplashScreenModel.dart';

class SplashScreenVM extends SplashScreenModel {
  void navigateToLoginScreen(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      context.pushReplacement(Pages.loginScreen);
    });
  }
}
