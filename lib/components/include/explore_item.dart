import 'package:flutter/material.dart';

class ExploreItem extends StatefulWidget {
  @override
  _ExploreItem createState() => _ExploreItem();
}

class _ExploreItem extends State<ExploreItem> {

  Widget item() {
    return Container(
      width: 150.0,
      height: 50.0,
      margin: EdgeInsets.only(
        right: 10.0
      ),
      color: Colors.blue,
    );
  }

  @override
  Widget build(BuildContext context) {
    return (
        Container(
          margin: EdgeInsets.only(
            top: 10.0
          ),
          height: 200.0,
          width: double.infinity,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              item(),
              item(),
              item(),
              item(),
            ],
          ),
        )
    );
  }
}