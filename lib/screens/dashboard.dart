import 'package:flutter/material.dart';
import 'package:event_bus/event_bus.dart';

import 'package:dana_training/components/include/header_balance.dart';
import 'package:dana_training/components/include/payment_menu.dart';
import 'package:dana_training/components/include/main_promo_swipe.dart';
import 'package:dana_training/components/include/explore_dana.dart';
import 'package:dana_training/components/include/dana_news.dart';
import 'package:dana_training/components/include/bottom_nav.dart';

import 'package:dana_training/event/bottom_nav_event.dart';

class Dashboard extends StatefulWidget {
  @override
  _Dashboard createState() => _Dashboard();
}

class _Dashboard extends State<Dashboard> {
  int activeIndex = 0;

  Widget background() {
    return Column(
      children: <Widget>[
        Expanded(
            child: Container(
              decoration: const BoxDecoration(color: Colors.blue),
            ),
            flex: 1),
        Expanded(child: Container(), flex: 3)
      ],
    );
  }

  Widget mainMenu() {
    return Container(
      padding: EdgeInsets.all(30.0),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              children: <Widget>[
                Text("Scan", style: TextStyle(color: Colors.white)),
                IconButton(
                  icon: Icon(Icons.aspect_ratio, color: Colors.white, size: 35),
                )
              ],
            ),
            Column(
              children: <Widget>[
                Text("Top up", style: TextStyle(color: Colors.white)),
                IconButton(
                  icon: Icon(Icons.add, color: Colors.white, size: 35),
                )
              ],
            ),
            Column(
              children: <Widget>[
                Text("Send", style: TextStyle(color: Colors.white)),
                IconButton(
                  icon: Icon(Icons.send, color: Colors.white, size: 35),
                )
              ],
            ),
            Column(
              children: <Widget>[
                Text("Receive", style: TextStyle(color: Colors.white)),
                IconButton(
                  icon: Icon(Icons.monetization_on,
                      color: Colors.white, size: 35),
                )
              ],
            )
          ]),
    );
  }

  Widget DANANavIcon(String name, IconData ic, int page) {
    var active = activeIndex == page;

    return InkWell(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(ic, color: active ? Colors.blue : Colors.grey),
            Text(name,
                style: TextStyle(color: active ? Colors.blue : Colors.grey))
          ],
        ),
      ),
      onTap: () {
        print("tap menu " + page.toString());
        this.setState(() {
          activeIndex = page;
        });
      },
    );
  }

  Widget DANANavMainIcon(String name, IconData ic, int page) {
    var active = activeIndex == page;

    return InkWell(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(ic, size: 40, color: active ? Colors.blue : Colors.grey),
            Text(name,
                style: TextStyle(color: active ? Colors.blue : Colors.grey)),
          ],
        ),
      ),
      onTap: () {
        print("tap menu " + page.toString());
        this.setState(() {
          activeIndex = page;
        });
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          centerTitle: false,
          title: Header_balance(),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.message),
              tooltip: 'Increase volume by 10',
              onPressed: () {},
            ),
          ],
        ),
        body: SingleChildScrollView(
            physics: ClampingScrollPhysics(),
            child: Container(
                height: MediaQuery.of(context).size.height * 1.6,
                child: Stack(
                  children: <Widget>[
                    background(),
                    Column(
                      children: <Widget>[
                        mainMenu(),
                        PaymentMenu(),
                        MainPromoSwipe(),
                        ExploreDana(),
                        DanaNews()
                      ],
                    )
                  ],
                ))),
        bottomNavigationBar: Container(
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
        )));
  }
}
