import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task/screen/items.dart';
import 'package:task/screen/otp.dart';
import 'package:task/screen/signin.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:fluttertoast/fluttertoast.dart';

class mobiles extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (_mobiles());
  }
}

class _mobiles extends State<mobiles> {
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
                        "RS.7000",
                        style: TextStyle(color: Colors.black),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Container(
                      width: 150,
                      height: 150,
                      child: Image.network(
                          "https://m.media-amazon.com/images/I/31jQ91XUDhS._SY445_SX342_QL70_FMwebp_.jpg"),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 2, bottom: 4),
                      child: Text(
                        "IPhone",
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
                                  price: "7000", name: "IPhone", image: "");
                              // lp.add(i.tomap(String, dynamic));
                              dbRef.push().set(i.tomap(String, dynamic));
                            });
                            Fluttertoast.showToast(
                                msg: "product add successfully in list",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.CENTER);
                            
                            
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
                        "RS.12000",
                        style: TextStyle(color: Colors.black),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Container(
                      width: 150,
                      height: 150,
                      child: Image.network(
                          "https://m.media-amazon.com/images/I/91W42b8YW+L._SX679_.jpg"),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 2, bottom: 4),
                      child: Text(
                        "Samsung",
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
                                  price: "12000", name: "Samsung", image: "");
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
                        "RS.40000",
                        style: TextStyle(color: Colors.black),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Container(
                      width: 150,
                      height: 150,
                      child: Image.network(
                          "https://m.media-amazon.com/images/I/41o3CoW58tL._SX300_SY300_QL70_FMwebp_.jpg"),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 2, bottom: 4),
                      child: Text(
                        "OnePlus",
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
                                  price: "40000", name: "OnePlus", image: "");
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
                        "RS.70000",
                        style: TextStyle(color: Colors.black),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Container(
                      width: 150,
                      height: 150,
                      child: Image.network(
                          "https://m.media-amazon.com/images/I/512xWF88CnL._SX679_.jpg"),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 2, bottom: 4),
                      child: Text(
                        "Realme",
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
                                  price: "70000", name: "Realme", image: "");
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
