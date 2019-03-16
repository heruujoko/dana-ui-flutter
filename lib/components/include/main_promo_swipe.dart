import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class MainPromoSwipe extends StatefulWidget {
  @override
  _MainPromoSwipe createState() => _MainPromoSwipe();
}

class _MainPromoSwipe extends State<MainPromoSwipe> {

  @override
  Widget build(BuildContext context) {
    return (
        Container(
          padding: new EdgeInsets.only(
              right: 20.0,
              left: 20.0),
          margin: EdgeInsets.only(
            top: 15.0
          ),
          height: 150,
          child: new Swiper(
            itemBuilder: (BuildContext context,int index){
              return new Image.network("http://via.placeholder.com/350x150",fit: BoxFit.fill,);
            },
            itemCount: 3,
            pagination: new SwiperPagination()
          ),
        )
    );
  }
}