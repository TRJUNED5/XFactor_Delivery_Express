import 'package:flutter/material.dart';

//void main(){
//  runApp(MyApp());
//}

//class MyApp extends StatelessWidget {
//  const MyApp({Key? key}) : super(key: key);

// @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      home: Scaffold(appBar: AppBar(title: Text("XFactor Delivery")),)
//    );
//  }
//}

class Background extends StatelessWidget {
  final Widget child;
  const Background({
     Key? key,
    required this.child,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 0,
            left:0,
            child: Image.asset(
              "images/main_top.png",
          width: size.width * 0.3,
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: Image.asset("images/main_bottom.png")
          ),
        child,
        ],
        ),
    );
  }
}