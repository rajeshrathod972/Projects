import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task/screen/done.dart';
import 'package:task/screen/laptops.dart';
import 'package:task/screen/mobiles.dart';
import 'package:task/screen/otp.dart';
import 'package:task/screen/signin.dart';
import 'package:firebase_database/firebase_database.dart';

class mycart extends StatefulWidget {
  List t;
  int p;
  mycart({required this.t, required this.p});
  @override
  State<StatefulWidget> createState() {
    return (_mycart());
  }
}

class _mycart extends State<mycart> {
  late DatabaseReference dbRef;
  @override
  void initState() {
    dbRef = FirebaseDatabase.instance.ref("item");
    var p = test();
    super.initState();
  }

  var num = 0;

  List<Container> c = [];

  test() async{
    DataSnapshot snapshot = await dbRef.child("item").get();
    var arr = snapshot.children;
    setState(() {
      for (var u in widget.t) {
        var n = u["name"];
        var p = u["price"];
        var k = u["image"];
        print(u);

        c.add(
          Container(
            margin: EdgeInsets.only(top: 20, left: 20, right: 20),
            height: 130,
            decoration: BoxDecoration(
                border: Border.all(), borderRadius: BorderRadius.circular(25)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Text(
                        "$n",
                        style: TextStyle(),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Text(
                        "$p",
                        style: TextStyle(color: Colors.red),
                      ),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 120, top: 40),
                  child: TextButton(
                    onPressed: () {
                      // dbRef.child("${u}").remove();
                      
                      // c.clear();
                      // test();
                    },
                    child: Text("Remove"),
                  ),
                )
              ],
            ),
          ),
        );
      }
      ;
    });
  }

  @override
  Widget build(BuildContext context) {
    return (Builder(
      builder: (context) {
        return (Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.orangeAccent[100],
              title: Text(
                "My Cart",
                style: TextStyle(),
              ),
            ),
            body: SingleChildScrollView(
              child: Container(
                child: Column(
                  children: [
                    Container(
                      child: Column(children: c),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: 20, right: 20, bottom: 1, top: 15),
                      decoration: BoxDecoration(
                          color: Colors.greenAccent,
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(25)),
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => done(
                                    t: num,
                                  ),
                                ));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "${widget.p}",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black),
                              ),
                              Text("Done",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.black)),
                              Text(">",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.black))
                            ],
                          )),
                    )
                  ],
                ),
              ),
            )));
      },
    ));
  }
}
