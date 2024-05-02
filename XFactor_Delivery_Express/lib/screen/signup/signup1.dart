import 'package:flutter/material.dart';
import 'package:project/screen/components/background.dart';
import 'package:project/constant.dart';

class MySignup extends StatelessWidget {

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
            SizedBox(height: size.height *0.05),
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
                              Navigator.pushNamed(context, 'DB2');
                            },
                          ),
      ),
      SizedBox(height: size.height *0.05),
      Container(
        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                                color: kPrimaryColor,
                          ),
                          child: TextButton(
                            child: Text(
                              "USER",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, 'user2');
                            },
                          ),
      )
          ],
        )
      ),
    );
    
  }
}