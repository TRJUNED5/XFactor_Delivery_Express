import 'package:flutter/material.dart';

class ButtonStyle extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                                colors: [Colors.yellow, Colors.orange]),
                          ),
                          child: TextButton(
                            child: Text(
                              "           Start           ",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, '/dash');
                            },
                          ),
      )
    );
  }
}