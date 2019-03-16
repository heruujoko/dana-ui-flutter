import 'package:flutter/material.dart';

class Header_balance extends StatefulWidget {
  @override
  _Header_balance createState() => _Header_balance();
}

class _Header_balance extends State<Header_balance> {

  @override
  Widget build(BuildContext context) {
    return (
        Container(
          child: Row(
            children: <Widget>[
              Text("Rp.",style: TextStyle(fontSize: 14.0)),
              Text("123.568.791",style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold))
            ],
          )
        )
    );
  }
}