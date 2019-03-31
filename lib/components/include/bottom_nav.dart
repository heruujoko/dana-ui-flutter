import 'package:flutter/material.dart';
import 'package:event_bus/event_bus.dart';
import 'package:dana_training/event/bottom_nav_event.dart';

class BottomNav extends StatefulWidget {
  var onChangePage;
  int activePage;

  BottomNav(this.onChangePage, this.activePage);

  @override
  _BottomNav createState() => _BottomNav(this.onChangePage, this.activePage);
}

class _BottomNav extends State<BottomNav> {

  var onChangePage;
  int activeIndex = 0;

  _BottomNav(this.onChangePage, this.activeIndex);

  Widget DANANavIcon(String name, IconData ic, int page) {
    var active = activeIndex == page;

    return InkWell(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(ic, color: active? Colors.blue : Colors.grey),
            Text(name, style: TextStyle(color: active? Colors.blue : Colors.grey, fontSize: 7.0))
          ],
        ),
      ),
      onTap: () {
        print("tap menu "+page.toString());
        onChangePage(page);
      },
    );
  }

  Widget DANANavMainIcon(String name, IconData ic, int page) {
    var active = activeIndex == page;

    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(ic, size: 40, color: active? Colors.blue : Colors.grey),
          Text(name, style: TextStyle(color: active? Colors.blue : Colors.grey, fontSize: 7.0)),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          DANANavIcon("Dashboard", Icons.account_balance_wallet, 0),
          DANANavIcon("History", Icons.email, 1),
          DANANavMainIcon("Pay", Icons.settings_backup_restore, 2),
          DANANavIcon("Pocket", Icons.account_balance_wallet, 3),
          DANANavIcon("Profile", Icons.person, 4),
        ],
    ),
    );
  }
}