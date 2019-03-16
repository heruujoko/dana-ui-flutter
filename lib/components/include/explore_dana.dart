import 'package:flutter/material.dart';
import 'package:dana_training/components/include/explore_item.dart';

class ExploreDana extends StatefulWidget {
  @override
  _ExploreDana createState() => _ExploreDana();
}

class _ExploreDana extends State<ExploreDana> {

  @override
  Widget build(BuildContext context) {
    return (
        Container(
          margin: EdgeInsets.only(
            top: 10.0
          ),
          padding: EdgeInsets.only(
            left: 20.0,
            right: 20.0
          ),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Explore DANA", textAlign: TextAlign.start, style: TextStyle(color: Colors.grey),),
              ExploreItem()
            ],
          ),
        )
    );
  }
}