import 'package:flutter/material.dart';

class Pulsa extends StatefulWidget {
  @override
  _Pulsa createState() => _Pulsa();
}

class _Pulsa extends State<Pulsa> {

  Widget PhoneNumberInput() {
    return (
        Container(
          padding: EdgeInsets.all(10.0),
          child: Row(
            children: <Widget>[
              Expanded(
                child: TextField(),
                flex: 6
              ),
              Expanded(
                  child: Icon(Icons.contact_phone),
                  flex: 1
              )
            ],
          ),
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return (
        Scaffold(
            resizeToAvoidBottomPadding: true,
            appBar: AppBar(
              title: Text("Pulsa"),
            ),
            body: SingleChildScrollView(
              physics: ClampingScrollPhysics(),
              child: Container(
                  width: double.infinity,
                  height: 775,
                  child: Column(
                    children: <Widget>[
                      Expanded(child: Container(
                        color: Colors.blue,
                      ), flex: 1),
                      Expanded(child: Container(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          children: <Widget>[
                            PhoneNumberInput()
                          ],
                        ),
                      ), flex: 6),
                    ],
                  )
              ),
            )
        )
    );
  }
}