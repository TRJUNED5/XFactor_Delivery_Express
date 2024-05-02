import 'package:flutter/material.dart';
import 'package:project/constant.dart';
import 'package:project/screen/components/background.dart';
import 'package:project/screen/login/login1.dart';
import 'package:project/screen/signup/signup1.dart';
//import 'package:project/screen/components/buttonstyle.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "XFactor Deliver Express",
              style:TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: size.height *0.03),
              Positioned(
                
            child: Image.asset("images/delivery1.png",
            height: size.height *0.45,
            )
            ),
            SizedBox(height: size.height *0.05),

          Container(
          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            //gradient: LinearGradient(
                                color: kPrimaryColor,
                          ),
                          child: TextButton(
                            child: Text("  LOGIN  ",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, 'login1');
                            },
                          ),
      ),
      SizedBox(height: size.height *0.02),

            Container(
        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                                color: kPrimaryLightColor,
                          ),
                          child: TextButton(
                            child: Text(
                              "SIGN UP",
                              style:
                                  TextStyle(color: Color.fromARGB(153, 0, 0, 0), fontSize: 20),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, 'signup1');
                            },
                          ),
      )
            /*TextButton(
              onPressed: (){Navigator.pushNamed(context, 'login1');},
              child: Text('LOGIN',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: kPrimaryColor,
                fontSize:18
              ),
              ),
              //style: ButtonStyle(),
            ),
            SizedBox(height: size.height *0.02),
            TextButton(
              onPressed: (){Navigator.pushNamed(context, 'signup1');},
              child: Text('SIGNUP',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: kPrimaryColor,
                fontSize:18
              ),
              )
            )*/
            
              ],
              
          ),
      )
        );
  }
}


