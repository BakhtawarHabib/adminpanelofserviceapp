import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:servicesadminpanel/login.dart';
import 'package:tabbar/tabbar.dart';

class Giveterms extends StatefulWidget {
  Giveterms({Key key}) : super(key: key);

  _GivetermsState createState() => _GivetermsState();
}

class _GivetermsState extends State<Giveterms> {
  final controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Terms&Conditons"),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: TabbarHeader(
            controller: controller,
            tabs: [
              Tab(
                  child: Text(
                "Seller terms",
                style: TextStyle(fontSize: 17),
              )),
              Tab(
                  child: Text(
                "Buyer terms",
                style: TextStyle(fontSize: 17),
              ))
            ],
          ),
        ),
      ),
      body: TabbarContent(
        controller: controller,
        children: <Widget>[
          sellerabout(),
          buyerabout(),
        ],
      ),
    );
  }

  Widget sellerabout() {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(20.0),
          decoration: BoxDecoration(border: Border.all(color: textcolor)),
          child: new ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: 300.0,
            ),
            child: TextFormField(
              minLines: 1,
              maxLines: null,
              textAlign: TextAlign.center,
              decoration: new InputDecoration(
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: textcolor)),
                hintText: "Add About for sellers",
                hintStyle:
                    TextStyle(color: textcolor, fontWeight: FontWeight.bold),
              ),
              keyboardType: TextInputType.multiline,
              style: new TextStyle(
                color: textcolor,
                fontSize: 18,
              ),
            ),
          ),
        ),
        MaterialButton(
          shape: StadiumBorder(),
          minWidth: 200,
          height: 50,
          color: textcolor,
          onPressed: () {},
          child: Text(
            "Submit",
            style: new TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w300,
              fontFamily: "Poppins",
            ),
          ),
        )
      ],
    );
  }

  Widget buyerabout() {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(20.0),
          decoration: BoxDecoration(border: Border.all(color: textcolor)),
          child: new ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: 300.0,
            ),
            child: TextFormField(
              minLines: 1,
              maxLines: null,
              textAlign: TextAlign.center,
              decoration: new InputDecoration(
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: textcolor)),
                hintText: "Add About for Buyers",
                hintStyle:
                    TextStyle(color: textcolor, fontWeight: FontWeight.bold),
              ),
              keyboardType: TextInputType.multiline,
              style: new TextStyle(
                color: textcolor,
                fontSize: 18,
              ),
            ),
          ),
        ),
        MaterialButton(
          shape: StadiumBorder(),
          minWidth: 200,
          height: 50,
          color: textcolor,
          onPressed: () {},
          child: Text(
            "Submit",
            style: new TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w300,
              fontFamily: "Poppins",
            ),
          ),
        )
      ],
    );
  }
}
