import 'package:codelab_3/widgets/bottom_barItem.dart';
import 'package:flutter/material.dart';

import '../pages/splash_page.dart';

class BottomBarWidget extends StatefulWidget {
  @override
  State<BottomBarWidget> createState() => _BottomBarWidgetState();
}

final List<BottomBarItem> barItemsList = [
  BottomBarItem(label: 'Home', isSelected: true, icon: Icons.home),
  BottomBarItem(label: 'Account', isSelected: false, icon: Icons.person),
  BottomBarItem(
      label: 'Bookings', isSelected: false, icon: Icons.pending_actions),
  BottomBarItem(label: 'Payments', isSelected: false, icon: Icons.payments),
  BottomBarItem(label: 'More', isSelected: false, icon: Icons.more_horiz),
];

class _BottomBarWidgetState extends State<BottomBarWidget> {
  List<BottomBarItem> barItems = barItemsList;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(barItems.length, (index) {
          var barItem = barItems[index];

          return GestureDetector(
            onTap: () {
              setState(() {
                barItems.forEach((element) {
                  element.isSelected = barItems == element;
                });
              });
            },
            child: Column(
              children: [
                Icon(
                  barItem.icon,
                  color: barItem.isSelected! ? mainThemeColor : Colors.grey,
                ),
                Text(
                  barItem.label!,
                  style: TextStyle(
                    color: (barItem.isSelected! ? mainThemeColor : Colors.grey),
                    fontSize: 11,
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
