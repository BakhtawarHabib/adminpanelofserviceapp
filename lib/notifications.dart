import 'package:flutter/material.dart';
import 'package:servicesadminpanel/login.dart';
import 'package:servicesadminpanel/sellerrequest.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: textcolor,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Notifications",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          backgroundColor: textcolor,
          elevation: 0.0,
        ),
        body: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SellerRequest()));
                  },
                  child: Container(
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50.0),
                        border: Border.all(color: Colors.black, width: 1)),
                    child: ListTile(
                      subtitle: Text("32 minutes ago"),
                      trailing: Icon(
                        Icons.chevron_right,
                        color: Colors.black,
                        size: 30,
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
                      title: Text(
                        "Sentoman Denzier send you approval request",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                  ),
                )));
  }
}
