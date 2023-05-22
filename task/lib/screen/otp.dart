import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task/screen/home.dart';
import 'package:task/screen/signin.dart';
import 'package:firebase_database/firebase_database.dart';

import 'items.dart';

class otp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (_otp());
  }
}

class _otp extends State<otp> {
  var otp = TextEditingController();
  var t = "12345";
  late DatabaseReference dbRef;
  var num = 0;
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
            body: SingleChildScrollView(
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(left: 25, right: 25, top: 150),
            height: 400,
            width: 400,
            decoration: BoxDecoration(
                color: Colors.white38,
                border: Border.all(),
                borderRadius: BorderRadius.circular(25)),
            child: Container(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20),
                  height: 100,
                  width: 100,
                  child: Image.network(
                      "https://www.pngitem.com/pimgs/m/111-1114675_user-login-person-man-enter-person-login-icon.png"),
                ),
                Container(margin: EdgeInsets.all(20), child: Text("Enter OTP")),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20, top: 5),
                  child: TextField(
                    obscureText: true,
                    controller: otp,
                    decoration: InputDecoration(
                        labelText: "Enter OTP",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25))),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(25)),
                  width: 300,
                  height: 50,
                  child: TextButton(
                    onPressed: () async {
                      DataSnapshot snapshot = await dbRef.child("item").get();
                      setState(() {
                        var arr = snapshot.children;
                        num = arr.length;
                      });
                      if ("12345" == otp.text) {
                        otp.clear();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => home(n: num,),
                            ));
                      }
                    },
                    child: Text(
                      "Submit",
                      style: TextStyle(color: Colors.black, fontSize: 17),
                    ),
                  ),
                )
              ],
            )),
          ),
        )));
      },
    ));
  }
}
