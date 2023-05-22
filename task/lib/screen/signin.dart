import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class signin extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (_signin());
  }
}

class _signin extends State<signin> {
  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return (Scaffold(
          body: Container(
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
                  margin: EdgeInsets.only(left: 20, right: 20, top: 5),
                  child: TextField(
                    controller: null,
                    decoration: InputDecoration(
                        labelText: "Enter name",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25))),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20, top: 5),
                  child: TextField(
                    controller: null,
                    decoration: InputDecoration(
                        labelText: "Enter PhoneNo",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25))),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20, top: 5),
                  child: TextField(
                    controller: null,
                    decoration: InputDecoration(
                        labelText: "Enter Email",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25))),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(25)),
                  width: 300,
                  height: 50,
                  child: TextButton(
                    onPressed: null,
                    child: Text(
                      "SignIn",
                      style: TextStyle(color: Colors.black, fontSize: 17),
                    ),
                  ),
                )
              ],
            )),
          ),
        ));
      },
    );
  }
}
