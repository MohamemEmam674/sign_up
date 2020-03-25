import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class productsInfo extends StatefulWidget {
  @override
  _productsInfoState createState() => _productsInfoState();
}

class _productsInfoState extends State<productsInfo> {
  Widget _colorWidget(Color color, {bool isSelected = false}) {
    return CircleAvatar(
      radius: 12,
      backgroundColor: color.withAlpha(150),
      child: isSelected
          ? Icon(
        Icons.check_circle,
        color: color,
        size: 18,
      )
          : CircleAvatar(radius: 7, backgroundColor: color),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget image_slider_carousel = Container(
      height: 300.0,
      width: 350.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images:[
          AssetImage('images/1.jpg'),
          AssetImage('images/2.jpg'),
          AssetImage( 'images/3.jpg'),
        ],
        indicatorBgPadding: 2.5,
        autoplay: true,
        dotColor: Colors.blueGrey,
        dotBgColor: Colors.grey,
        dotSize: 4.0,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 3000,),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          alignment: Alignment.topLeft,
          padding: EdgeInsets.all(10),
          onPressed: () {},
        ),
        title: Text('Profile',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600,),
          textAlign: TextAlign.left,),
      ),
      body: ListView(
        children: <Widget>[
          image_slider_carousel,
          SizedBox(),
          Container(
            color: Colors.white,
            padding: EdgeInsets.all(23.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'LG Fridge', textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 18,color: Colors.black),
                          ),
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.star,
                                color: Colors.amberAccent,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.amberAccent,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.amberAccent,
                              ),
                              Icon(
                                Icons.star_border,
                                color: Colors.amberAccent,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Text("\EGP 20000", style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0
                        ),),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(24,10,24,10),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Available Colors',
                  style: TextStyle(fontSize: 15,
                    color: Colors.black,),
                  textAlign: TextAlign.left,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    _colorWidget(Colors.yellow, ),
                    SizedBox(
                      width: 30,
                    ),
                    _colorWidget(Colors.blueGrey, ),
                    SizedBox(
                      width: 30,
                    ),
                    _colorWidget(Colors.black,),
                    SizedBox(
                      width: 30,
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 9, 9, 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                Text('Description',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14.0
                  ),),
                const SizedBox(height: 10,),
                Text(
                  'qwertyuiop[]asdfghjklkl;zxccvbnm,,./'
                      'qwertyuio;lkjnbvcvnjm,.,mnbvcghjk,mvghjk'
                      'dfghjkjhgfdghjklkjhgfghjklkjhg',
                  textAlign: TextAlign.justify, style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 14.0,
                ),
                )
              ],
            ),
          ),
//          const SizedBox(height: 10.5,),
          Container(
              padding: EdgeInsets.fromLTRB(20,25,20,11),
              child: Text(
                'Reviews',style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),

              )
          ),
//          const  SizedBox(height: 10.5,),
          Container(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child:TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Add comment',
              ),
            ),
          )   ,

//          const SizedBox(height: 10,),
          Container(
            child: Align(
              alignment: Alignment.bottomLeft,
              child: BottomNavigationBar(
                backgroundColor: Colors.white54,
                elevation: 5,
                selectedItemColor: Colors.black,
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home), title: Text("home")),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.ac_unit), title: Text("used")),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.build), title: Text("repaier")),
////                BottomNavigationBarItem(
////                    icon: Icon(Icons.account_circle),
////                    title: Text("profile")),
                ],
              ),
            ),
          )

        ],

      ),

    );
  }
}


