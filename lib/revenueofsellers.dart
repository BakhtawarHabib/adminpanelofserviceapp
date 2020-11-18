import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:servicesadminpanel/login.dart';

class Revenueofsellers extends StatefulWidget {
  @override
  _RevenueofsellersState createState() => _RevenueofsellersState();
}

class _RevenueofsellersState extends State<Revenueofsellers> {
  var list = ["12 Nov 2020", "8 July 2020", "13 July 2020"];
  var list2 = ["300\$", "200\$", "50\$"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Revenue"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                alignment: Alignment.center,
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage(
                          "assets/gentle.jpg",
                        ),
                        fit: BoxFit.cover)),
              ),
            ),
            Center(
              child: Text(
                "Senotira Habibi",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
              ),
            ),
            Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.black,
                    height: 50,
                    width: 150,
                    child: Center(
                      child: Text(
                        "Order's date",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  VerticalDivider(
                    color: Colors.black,
                    thickness: 2,
                    width: 20,
                  ),
                  Container(
                    child: Center(
                      child: Text(
                        "Amount",
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    color: Colors.blue,
                    height: 50,
                    width: 150,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            for (var item in list)
              for (var item2 in list2)
                Center(
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            item,
                            style: TextStyle(color: Colors.black, fontSize: 17),
                          ),
                          VerticalDivider(
                            color: Colors.black,
                            thickness: 2,
                            width: 20,
                          ),
                          Text(
                            item2,
                            style: TextStyle(color: Colors.black, fontSize: 17),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 2,
                      )
                    ],
                  ),
                ),
            Center(
              child: Text(
                "Monthly Revenue",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 19,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "Total Amount this month",
                    style: TextStyle(color: Colors.black, fontSize: 17),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 100,
                    height: 50,
                    decoration:
                        BoxDecoration(border: Border.all(color: textcolor)),
                    child: Center(
                      child: Text(
                        "5000\$",
                        style: TextStyle(color: Colors.black, fontSize: 17),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
