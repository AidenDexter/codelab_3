import 'package:codelab_3/models/attraction_model.dart';
import 'package:codelab_3/pages/splash_page.dart';
import 'package:codelab_3/widgets/attraction.dart';
import 'package:flutter/material.dart';

import '../widgets/attraction_card.dart';
import '../widgets/bottom_bar_widget.dart';

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 0,
        title: const Icon(
          Icons.pool,
          color: Colors.white,
        ),
        actions: [
          Container(
              margin: EdgeInsets.only(right: 15),
              child: Icon(
                Icons.notifications,
                color: Colors.white,
              ))
        ],
      ),
      backgroundColor: mainThemeColor,
      body: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: attractionsList.length,
                  itemBuilder: (context, index) {
                    Attraction attr = attractionsList[index];
                    return AttractionCard(attraction: attr);
                  },
                ),
              ),
              BottomBarWidget()
            ],
          ),
        ),
      ),
    );
  }
}
