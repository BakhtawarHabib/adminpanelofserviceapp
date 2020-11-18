import 'package:flutter/material.dart';
import 'package:servicesadminpanel/Revenueofsellers.dart';
import 'package:servicesadminpanel/login.dart';

import 'package:smooth_star_rating/smooth_star_rating.dart';

class RevenueSellerslist extends StatefulWidget {
  @override
  _RevenueSellerslistState createState() => _RevenueSellerslistState();
}

class _RevenueSellerslistState extends State<RevenueSellerslist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sellers"),
      ),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Revenueofsellers()));
                },
                child: Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                      color: textcolor,
                      borderRadius: BorderRadius.circular(50.0),
                      border: Border.all(color: textcolor, width: 1)),
                  child: ListTile(
                    subtitle: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SmoothStarRating(
                            rating: 3.0,
                            allowHalfRating: false,
                            onRated: (v) {},
                            starCount: 5,
                            size: 20.0,
                            filledIconData: Icons.star,
                            halfFilledIconData: Icons.star_half,
                            defaultIconData: Icons.star_half,
                            isReadOnly: true,
                            color: Colors.yellow,
                            borderColor: Colors.yellow,
                            spacing: 1.0),
                        Text(
                          "Pedicure & manicure",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    leading: Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          image: new DecorationImage(
                              fit: BoxFit.fill,
                              image: new AssetImage("assets/gentle.jpg"))),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Sentoman Denzier",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        Text(
                          "Service",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              )),
    );
  }
}
