import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task/screen/home.dart';
import 'package:task/screen/laptops.dart';
import 'package:task/screen/mobiles.dart';
import 'package:task/screen/mycart.dart';
import 'package:task/screen/otp.dart';
import 'package:task/screen/signin.dart';

class done extends StatefulWidget {
  int t;
  done({required this.t});
  @override
  State<StatefulWidget> createState() {
    return (_done());
  }
}

class _done extends State<done> {
  @override
  Widget build(BuildContext context) {
    return (Builder(
      builder: (context) {
        return (Scaffold(
          body: Container(
            decoration: BoxDecoration(
                border: Border.all(), borderRadius: BorderRadius.circular(25)),
            margin: EdgeInsets.only(left: 50, right: 50, top: 200),
            width: 400,
            height: 150,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 30),
                  padding: EdgeInsets.only(left: 40, right: 20),
                  child: Text(
                    "Your order has been placed successfully ",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 160, top: 30),
                  child: TextButton(
                    child: Text(
                      "Ok",
                      style: TextStyle(color: Colors.black),
                    ),
                    onPressed: (() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => home(
                              n: 0,
                            ),
                          ));
                    }),
                  ),
                )
              ],
            ),
          ),
        ));
      },
    ));
  }
}
