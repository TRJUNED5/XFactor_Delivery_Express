import 'package:flutter/material.dart';
import 'package:project/screen/components/background.dart';
import 'package:project/constant.dart';

class LoginScreen extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Positioned(
                
            child: Image.asset("images/delivery1.png",
            height: size.height *0.3,
            )
            ),
            Positioned(
            top: 0,
            left: 5,
            child: Container(
              padding: EdgeInsets.only(left: 5, top: 130),
              child: Text(
                'LOGIN',
                style: TextStyle(color: kPrimaryColor, fontSize: 33),
              ),
            ),
            ),
            SizedBox(height: size.height *0.05),
            Container(
          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            //gradient: LinearGradient(
                                color: kPrimaryColor,
                          ),
                          child: TextButton(
                            child: Text("     ADMIN     ",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, 'admin1');
                            },
                          ),
      ),
      SizedBox(height: size.height *0.02),
      Container(
        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                                color: kPrimaryColor,
                          ),
                          child: TextButton(
                            child: Text(
                              "Delivery Man",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, 'DB1');
                            },
                          ),
      ),
      SizedBox(height: size.height *0.02),
      Container(
        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                                color: kPrimaryColor,
                          ),
                          child: TextButton(
                            child: Text(
                              "      USER       ",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, 'user1');
                            },
                          ),
      )
          ],
        )
      ),
    );
    
  }
}