import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task/screen/otp.dart';
import 'package:task/screen/signin.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:task/firebase_options.dart';
import 'items.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fluttertoast/fluttertoast.dart';

class laptops extends StatefulWidget {
  // List l1;
  // laptops({required this.l1});
  @override
  State<StatefulWidget> createState() {
    return (_laptops());
  }
}

class _laptops extends State<laptops> {
  List lp = [];
  late DatabaseReference dbRef;
  @override
  void initState() {
    dbRef = FirebaseDatabase.instance.ref().child('item');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return (Builder(
      builder: (context) {
        return (Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(25)),
                  child: Column(children: [
                    Container(
                      margin: EdgeInsets.only(
                        top: 4,
                      ),
                      child: Text(
                        "RS.55000",
                        style: TextStyle(color: Colors.black),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Container(
                      width: 150,
                      height: 150,
                      child: Image.network(
                          "https://m.media-amazon.com/images/I/318IUzGaq2L._SY445_SX342_QL70_FMwebp_.jpg"),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 2, bottom: 4),
                      child: Text(
                        "MacbookPro",
                        style: TextStyle(color: Colors.black),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Container(
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          border: Border.symmetric(),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(25),
                              bottomRight: Radius.circular(25))),
                      child: TextButton(
                          onPressed: () {
                            setState(() {
                              item i = item(
                                  price: "55000",
                                  name: "MacbookPro",
                                  image: "");

                              dbRef.push().set(i.tomap(String, dynamic));
                              Fluttertoast.showToast(
                                msg: "product add successfully in list",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.CENTER);
                            });
                          },
                          child: Text(
                            "Add to Cart",
                            style: TextStyle(color: Colors.black),
                          )),
                    )
                  ]),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(25)),
                  child: Column(children: [
                    Container(
                      margin: EdgeInsets.only(
                        top: 4,
                      ),
                      child: Text(
                        "RS.44000",
                        style: TextStyle(color: Colors.black),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Container(
                      width: 150,
                      height: 150,
                      child: Image.network(
                          "https://m.media-amazon.com/images/I/51Z-CqWUN1L._SX522_.jpg"),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 2, bottom: 4),
                      child: Text(
                        "Acer Asphire3",
                        style: TextStyle(color: Colors.black),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Container(
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          border: Border.symmetric(),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(25),
                              bottomRight: Radius.circular(25))),
                      child: TextButton(
                          onPressed: () {
                            setState(() {
                              item i = item(
                                  price: "44000",
                                  name: "Acer Asphire3",
                                  image: "");
                              dbRef.push().set(i.tomap(String, dynamic));
                              Fluttertoast.showToast(
                                msg: "product add successfully in list",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.CENTER);
                            });
                          },
                          child: Text(
                            "Add to Cart",
                            style: TextStyle(color: Colors.black),
                          )),
                    )
                  ]),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(25)),
                  child: Column(children: [
                    Container(
                      margin: EdgeInsets.only(
                        top: 4,
                      ),
                      child: Text(
                        "RS.80000",
                        style: TextStyle(color: Colors.black),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Container(
                      width: 150,
                      height: 150,
                      child: Image.network(
                          "https://m.media-amazon.com/images/I/71NxKpg1NIL._SX522_.jpg"),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 2, bottom: 4),
                      child: Text(
                        "Asus thuf",
                        style: TextStyle(color: Colors.black),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Container(
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          border: Border.symmetric(),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(25),
                              bottomRight: Radius.circular(25))),
                      child: TextButton(
                          onPressed: () {
                            setState(() {
                              item i = item(
                                  price: "80000", name: "Asus thuf", image: "");
                              dbRef.push().set(i.tomap(String, dynamic));
                              Fluttertoast.showToast(
                                msg: "product add successfully in list",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.CENTER);
                            });
                          },
                          child: Text(
                            "Add to Cart",
                            style: TextStyle(color: Colors.black),
                          )),
                    )
                  ]),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(25)),
                  child: Column(children: [
                    Container(
                      margin: EdgeInsets.only(
                        top: 4,
                      ),
                      child: Text(
                        "RS.100000",
                        style: TextStyle(color: Colors.black),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Container(
                      width: 150,
                      height: 150,
                      child: Image.network(
                          "https://m.media-amazon.com/images/I/518BYF8LHRL._SX522_.jpg"),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 2, bottom: 4),
                      child: Text(
                        "Lenovo thinkpad",
                        style: TextStyle(color: Colors.black),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Container(
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          border: Border.symmetric(),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(25),
                              bottomRight: Radius.circular(25))),
                      child: TextButton(
                          onPressed: () async {
                            setState(() {
                              item i = item(
                                price: "100000",
                                name: "Lenovo thinkpad",
                                image: "");
                            dbRef.push().set(i.tomap(String, dynamic));

                            Fluttertoast.showToast(
                                msg: "product add successfully in list",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.CENTER);
                            });
                          },
                          child: Text(
                            "Add to Cart",
                            style: TextStyle(color: Colors.black),
                          )),
                    )
                  ]),
                )
              ],
            )
          ],
        ));
      },
    ));
  }
}
