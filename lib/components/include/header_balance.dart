import 'package:flutter/material.dart';
import 'package:dana_training/helpers/formatter.dart';

class Header_balance extends StatefulWidget {
  @override
  _Header_balance createState() => _Header_balance();
}

class _Header_balance extends State<Header_balance> {

  @override
  Widget build(BuildContext context) {

    double balance = 5600000;

    return (
        Container(
          child: Row(
            children: <Widget>[
              Text("Rp.",style: TextStyle(fontSize: 14.0)),
              Text(Formatter.number(balance), style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold))
            ],
          )
        )
    );
  }
}