import 'package:flutter/material.dart';
import 'package:dana_training/models/news.dart';

class DanaNews extends StatefulWidget {
  @override
  _DanaNews createState() => _DanaNews();
}

class _DanaNews extends State<DanaNews> {

  var newsData = [
    new News("Isi saldo DANA lebih mudah", "Sekarang bisa di Pegadaian", "images/news_1.jpeg"),
    new News("DANA Kaget ada disini!", "Bagi uang lebih seru", "images/news_2.jpeg"),
    new News("Jajan seru cashback 50%!", "Temukan infonya disini", "images/news_3.jpeg"),
    new News("Bayar pake DANA", "tinggal 3 detik scan", "images/news_4.jpeg"),
  ];

  Widget NewsItems() {

    var items = List<Widget>();

    for (var i=0;i<newsData.length;i++) {
      items.add(NewsItem(newsData[i]));
    }

    return Container(
      margin: EdgeInsets.only(top: 10.0),
      child: Column(
        children: items,
      ),
    );
  }

  Widget NewsItem(News news) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10.0),
      child: Row(
        children: <Widget>[
          Image.asset(news.image_asset, height: 55.0, width: 55.0,),
          Container(
            margin: EdgeInsets.only(left: 10.0),
            width: MediaQuery.of(context).size.width * 0.6,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(news.title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),),
                Text(news.desc, style: TextStyle(fontSize: 11.0),)
              ],
            ),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Icon(Icons.arrow_forward_ios, color: Colors.grey)
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return (Container(
      width: MediaQuery.of(context).size.width * 0.9,
      margin: EdgeInsets.only(top: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Berita DANA',
            style: TextStyle(color: Colors.grey),
          ),
          NewsItems()
        ],
      ),
    ));
  }
}
