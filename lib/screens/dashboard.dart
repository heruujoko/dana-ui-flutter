import 'package:flutter/material.dart';
import 'package:dana_training/components/include/header_balance.dart';
import 'package:dana_training/components/include/payment_menu.dart';
import 'package:dana_training/components/include/main_promo_swipe.dart';
import 'package:dana_training/components/include/explore_dana.dart';

class Dashboard extends StatefulWidget {
  @override
  _Dashboard createState() => _Dashboard();
}

class _Dashboard extends State<Dashboard> {
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
                height: MediaQuery.of(context).size.height * 1.1,
                child: Stack(
                  children: <Widget>[
                    background(),
                    Column(
                      children: <Widget>[
                        mainMenu(),
                        PaymentMenu(),
                        MainPromoSwipe(),
                        ExploreDana()
                      ],
                    )
                  ],
                )))));
  }
}
