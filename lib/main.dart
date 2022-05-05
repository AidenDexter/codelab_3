import 'package:flutter/material.dart';

import 'package:codelab_3/pages/splash_page.dart';

import './pages/landing_page.dart';

void main() {
  runApp(
    MaterialApp(debugShowCheckedModeBanner: false, home: LandingPage()
        // SplashPage(),
        ),
  );
}
