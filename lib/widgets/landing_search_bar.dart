import 'package:codelab_3/pages/list_page.dart';
import 'package:codelab_3/pages/splash_page.dart';
import 'package:flutter/material.dart';

class LandingSearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 30, right: 30),
      padding: EdgeInsets.only(top: 5, bottom: 5, left: 20, right: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(' Search hotel', style: TextStyle(color: Colors.grey)),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => ListPage()),
              );
            },
            child: Container(
              width: 30,
              height: 30,
              child: Icon(Icons.search, color: Colors.white, size: 15),
              decoration: BoxDecoration(
                color: mainThemeColor,
                borderRadius: BorderRadius.circular(25),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
