import 'dart:ui';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task/screen/otp.dart';
import 'package:task/screen/signin.dart';
import 'package:task/firebase_options.dart';

class splash extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (MyState());
  }
}

class MyState extends State<splash> {
  var pn1 = TextEditingController();
  FirebaseAuth auth = FirebaseAuth.instance;
  String verificationIDRecevier = "";
  bool t1 = false;

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      body: SingleChildScrollView(child: Container(
        margin: EdgeInsets.only(left: 25, right: 25, top: 150),
        height: 400,
        width: 400,
        decoration: BoxDecoration(
            color: Colors.white38,
            border: Border.all(),
            borderRadius: BorderRadius.circular(25)),
        child: Container(
            child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20),
              height: 100,
              width: 100,
              child: Image.network(
                  "https://www.pngitem.com/pimgs/m/111-1114675_user-login-person-man-enter-person-login-icon.png"),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: TextField(
                controller: pn1,
                // keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    labelText: "Enter PhoneNo",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25))),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 50),
              child: Row(
                children: [
                  Text("Don't Have a account? "),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => signin(),
                            ));
                      },
                      child: Text(
                        "SignIn",
                        style: TextStyle(color: Colors.red),
                      ))
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(25)),
              width: 300,
              height: 50,
              child: TextButton(
                onPressed: () {
                  verifyNumber();
                  if (pn1.text == "+91 7066781329") {
                    pn1.clear();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => otp(),
                        ));
                  }
                },
                child: Text(
                  "login",
                  style: TextStyle(color: Colors.black, fontSize: 17),
                ),
              ),
            )
          ],
        )),
      ),)
    ));
  }

  verifyNumber() async {
    await auth.verifyPhoneNumber(
        phoneNumber: pn1.text,
        verificationCompleted: (PhoneAuthCredential credential) {
          auth.signInWithCredential(credential).then((value) {
            setState(() {
              t1 = true;
              print("you are logged in successsfully");
            });
          });
        },
        verificationFailed: (FirebaseAuthException Exception) {
          print(Exception.message);
        },
        codeSent: (String verificationID, int? resendToken) {
          setState(() {
            verificationIDRecevier = verificationID;
          });
        },
        codeAutoRetrievalTimeout: (String verificationID) {});
  }
}
