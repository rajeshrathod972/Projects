import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task/screen/items.dart';
import 'package:task/screen/laptops.dart';
import 'package:task/screen/mobiles.dart';
import 'package:task/screen/mycart.dart';
import 'package:task/screen/otp.dart';
import 'package:task/screen/signin.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_database/firebase_database.dart';

class home extends StatefulWidget {
  int n;
  home({required this.n});
  @override
  State<StatefulWidget> createState() {
    return (_home());
  }
}

class _home extends State<home> {
  var name = "mobiles";
  late DatabaseReference dbRef;
  @override
  void initState() {
    dbRef = FirebaseDatabase.instance.ref();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return (Builder(
      builder: (context) {
        return (Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.orangeAccent[100],
            title: Text("ShopNow"),
          ),
          body: SingleChildScrollView(
              child: Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      child: TextButton(
                        child: Text(
                          "Mobile",
                          style: TextStyle(fontSize: 17),
                        ),
                        onPressed: () {
                          setState(() {
                            name = "mobiles";
                          });
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      child: TextButton(
                        child: Text(
                          "Laptops",
                          style: TextStyle(fontSize: 17),
                        ),
                        onPressed: () {
                          setState(() {
                            name = "laptops";
                          });
                        },
                      ),
                    )
                  ],
                ),
                SingleChildScrollView(
                  child: Builder(builder: (context) {
                    if (name == "mobiles") {
                      return mobiles();
                    } else {
                      return laptops();
                    }
                  }),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10, bottom: 1),
                  decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(25)),
                  child: TextButton(
                      onPressed: () async {
                        List l = [];
                        DataSnapshot snapshot = await dbRef.child("item").get();
                        setState(() {
                          var arr = snapshot.children;
                          int i=0;
                          for (var node in arr) {
                            item i = item(
                                price: node.child("price").value.toString(),
                                name: node.child("name").value.toString(),
                                image: "${node.key}");

                            l.add(i.tomap(String, dynamic));
                          }
                        });

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => mycart(
                                t: l,
                                p: widget.n,
                              ),
                            ));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "${widget.n}",
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                          Text("CHECKOUT",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black)),
                          Text(">",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black))
                        ],
                      )),
                )
              ],
            ),
          )),
        ));
      },
    ));
  }
}
