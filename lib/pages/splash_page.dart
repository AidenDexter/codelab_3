import 'package:codelab_3/pages/landing_page.dart';
import 'package:codelab_3/pages/list_page.dart';
import 'package:flutter/material.dart';

const Color mainThemeColor = Color(0xFF272D8D);

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => LandingPage(),
        ),
      );
    });
    return Stack(
      children: [
        Container(
          color: mainThemeColor,
        ),
        const Align(
          alignment: Alignment.center,
          child: Icon(
            Icons.pool,
            color: Colors.white,
            size: 80,
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: LinearProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(
              Colors.white.withOpacity(0.4),
            ),
          ),
        )
      ],
    );
  }
}
