import 'package:flutter/material.dart';
import 'package:servicesadminpanel/complaintofcustomers.dart';
import 'package:servicesadminpanel/complaintofseller.dart';
import 'package:servicesadminpanel/login.dart';

class Customercomplaintlist extends StatefulWidget {
  @override
  _CustomercomplaintlistState createState() => _CustomercomplaintlistState();
}

class _CustomercomplaintlistState extends State<Customercomplaintlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Complaint Customers"),
      ),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Complaintofcustomer()));
                },
                child: Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                      color: textcolor,
                      borderRadius: BorderRadius.circular(50.0),
                      border: Border.all(color: textcolor, width: 1)),
                  child: ListTile(
                    subtitle: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Date:",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "12 Nov 2020",
                          style: TextStyle(
                              color: Colors.white,
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
                              image: new AssetImage("assets/female.png"))),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Suptga billu sent you complaint",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
              )),
    );
  }
}
