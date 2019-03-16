import 'package:flutter/material.dart';

class PaymentMenu extends StatefulWidget {
  @override
  _PaymentMenu createState() => _PaymentMenu();
}

class _PaymentMenu extends State<PaymentMenu> {

  onTapMenu() {
    print("Tapped menu ");
  }

  Widget RowMenu(String name, IconData ic, Color icColor) {
    return InkWell(
      child: Container(
          width: MediaQuery
              .of(context)
              .size
              .width / 5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(ic, color: icColor, size: 35.0,),
              Text(name, textAlign: TextAlign.center)
            ],
          )),
      onTap: onTapMenu,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: new EdgeInsets.only(
          top: MediaQuery
              .of(context)
              .size
              .height * .15,
          right: 20.0,
          left: 20.0),
      child: new Container(
        height: 200.0,
        width: MediaQuery
            .of(context)
            .size
            .width,
        child: new Card(
            color: Colors.white,
            elevation: 4.0,
            child: Container(
              padding: EdgeInsets.all(0.0),
              child: Column(
                children: <Widget>[
                  Container(
                      padding: EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(Icons.mobile_screen_share, color: Colors.red,
                          size: 35.0,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Pulsa & Data", style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15.0)),
                            Text("Cashback 10%", style: TextStyle(
                                color: Colors.orange, fontSize: 15.0))
                          ],
                        ),
                        InkWell(
                          child: Container(
                            decoration: new BoxDecoration(color: Colors.blue,
                              borderRadius: new BorderRadius.circular(5.0),),
                            padding: EdgeInsets.all(10.0),
                            child: Text("Buy Now", style: TextStyle(
                                color: Colors.white, fontSize: 15.0)),
                          ),
                          onTap: () {
                            print("Buy ME!!!");
                          },
                        )
                      ],
                    )
                  ),
                  Container(
                    height: MediaQuery
                        .of(context)
                        .size
                        .height / 10,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        RowMenu("DANA Kaget", Icons.account_balance_wallet, Colors.blue),
                        RowMenu("Electric", Icons.lightbulb_outline, Colors.orange),
                        RowMenu("Cashout", Icons.monetization_on, Colors.green),
                        RowMenu("Others", Icons.missed_video_call, Colors.grey)
                      ],
                    ),
                  )
                ],
              ),
            )
        ),
      ),
    );
  }
}