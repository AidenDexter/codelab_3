import 'package:codelab_3/pages/splash_page.dart';
import 'package:flutter/material.dart';

import '../widgets/landing_search_bar.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://images.pexels.com/photos/261394/pexels-photo-261394.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            color: mainThemeColor.withOpacity(0.7),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Paradise',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              SizedBox(height: 60),
              Icon(Icons.pool, color: Colors.white, size: 80),
              SizedBox(height: 10),
              Text(
                'Choose location to'.toUpperCase(),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white.withOpacity(0.5)),
              ),
              SizedBox(height: 5),
              Text(
                'Find a Hotel',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              LandingSearchBar(),
            ],
          ),
        ],
      ),
    );
  }
}
