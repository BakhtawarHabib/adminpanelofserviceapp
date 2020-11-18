import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:servicesadminpanel/login.dart';
import 'package:tabbar/tabbar.dart';

class SellerProfile extends StatefulWidget {
  SellerProfile({Key key}) : super(key: key);

  _SellerProfileState createState() => _SellerProfileState();
}

class _SellerProfileState extends State<SellerProfile> {
  final controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Seller Info"),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: TabbarHeader(
            controller: controller,
            tabs: [
              Tab(
                  child: Text(
                "Personal Information",
                style: TextStyle(fontSize: 17),
              )),
              Tab(
                  child: Text(
                "Important Information",
                style: TextStyle(fontSize: 17),
              ))
            ],
          ),
        ),
      ),
      body: TabbarContent(
        controller: controller,
        children: <Widget>[persnalinfo(), impinfo()],
      ),
    );
  }

  Widget persnalinfo() {
    return Scaffold(
      backgroundColor: textcolor,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 90.0,
                ),
                Container(
                  alignment: Alignment.center,
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/gentle.jpg",
                          ),
                          fit: BoxFit.cover)),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Description:",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                    Text(
                      "I m Sentoman Denzier.I am a Designer.I will do your makeup in 200Dollars How are you I m Sentoman Denzier.I am Designer.I will do your makeup in 200Dollars.How are your",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontSize: 18),
                    ),
                  ],
                )),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
              child: Text(
                "Sentoman Denzier",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 10.0,
                    ),
                    Icon(
                      Icons.call,
                      size: 40.0,
                      color: Colors.green,
                    ),
                    Text(
                      "+9233939339",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 22),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Email:  Sentoman Denzier@gmail.com",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontSize: 20),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Text(
                      "Service:",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Text(
                      "Makeup",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ],
                )),
            Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Pricing",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      "100\$- 120\$",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Center(
                      child: MaterialButton(
                        onPressed: () {},
                        height: 50,
                        minWidth: 200,
                        shape: StadiumBorder(),
                        color: Colors.white,
                        child: Text(
                          "Remove this seller",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: textcolor,
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }

  Widget impinfo() {
    return Scaffold(
      backgroundColor: textcolor,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Text(
                  "ID card",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w300,
                      color: Colors.white),
                ),
                Container(
                  margin: EdgeInsets.all(10.0),
                  alignment: Alignment.center,
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/gentle.jpg",
                          ),
                          fit: BoxFit.cover)),
                ),
                Text(
                  "Certificate of Good Conduct",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w300,
                      color: Colors.white),
                ),
                Container(
                  margin: EdgeInsets.all(10.0),
                  alignment: Alignment.center,
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/gentle.jpg",
                          ),
                          fit: BoxFit.cover)),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Container(
                  height: 60,
                  width: 200,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.white)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        "KRA Pincode",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w300,
                            color: Colors.white),
                      ),
                      Text(
                        "0000",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}
