import 'package:flutter/cupertino.dart';
import 'package:project/screen/admin/adminlogin.dart';
import 'package:project/screen/components/body.dart';
import 'package:project/screen/delivery/deliverymanlogin.dart';
import 'package:project/screen/delivery/deliverymansignup.dart';
import 'package:project/screen/frontpage/welcome.dart';
import 'package:flutter/material.dart';
import 'package:project/constant.dart';
import 'package:project/screen/login/login1.dart';
import 'package:project/screen/signup/signup1.dart';
import 'package:project/screens/home/home.dart';
import 'package:project/user/userlogin.dart';
import 'package:project/user/usersignup.dart';
import '';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:'Project',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,

      ),
      home: Welcome(),
      routes: {
        'login1': (context) => LoginScreen(),
        'signup1': (context) => MySignup(),
        'admin1' :(context) => AdminLogin(),
        'DB1' : (context) => DeliveryManLogin(),
        'user1' : (context) => User(),
        'DB2' : (context) => DeliveryManSignUp(),
        'user2' :(context) => UserSignUp(),
        'delivery_home' :(context) => HomePage(),
        

      }
    
    );
    
  }
}