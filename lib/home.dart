import 'package:flutter/material.dart';
import 'package:servicesadminpanel/customercomplaintlist.dart';
import 'package:servicesadminpanel/giveterms.dart';
import 'package:servicesadminpanel/login.dart';
import 'package:servicesadminpanel/notifications.dart';
import 'package:servicesadminpanel/sellercomplaintlist.dart';
import 'package:servicesadminpanel/sellerlistforrevenue.dart';
import 'package:servicesadminpanel/sellerslist.dart';

class Homescreen extends StatefulWidget {
  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _buildBottomNavigationBar(),
      appBar: AppBar(
        title: Text("Admin panel"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Sellerslist()));
              },
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  "Newly sellers",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: textcolor),
                ),
              )),
          Divider(
            thickness: 1,
            color: textcolor,
          ),
          GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Sellerslist()));
              },
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  "Approved sellers",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: textcolor),
                ),
              )),
          Divider(
            thickness: 1,
            color: textcolor,
          ),
          GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Sellercomplaintlist()));
              },
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  "Sellers complaints",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: textcolor),
                ),
              )),
          Divider(
            thickness: 1,
            color: textcolor,
          ),
          GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Customercomplaintlist()));
              },
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  "Customers complaints",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: textcolor),
                ),
              )),
          Divider(
            thickness: 1,
            color: textcolor,
          ),
          GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RevenueSellerslist()));
              },
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  "Revenue of sellers",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: textcolor),
                ),
              )),
          Divider(
            thickness: 1,
            color: textcolor,
          ),
        ],
      ),
    );
  }

  Widget _buildBottomNavigationBar() {
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: textcolor),
      child: BottomNavigationBar(
        selectedItemColor: Colors.white, unselectedItemColor: Colors.white,

//      backgroundColor: Theme.of(context).primaryColor,
//      fixedColor: Colors.black,
        type: BottomNavigationBarType.fixed,

        elevation: 0,
        iconSize: 30,
        unselectedLabelStyle: TextStyle(),

        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              title: Text('Home', style: TextStyle())),
          BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Sellerslist()));
                },
                child: Icon(
                  Icons.person,
                ),
              ),
              title: Text('Sellers', style: TextStyle())),
          BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Notifications()));
                  },
                  child: Icon(Icons.notification_important)),
              title: Text('Notifications', style: TextStyle(fontSize: 12))),
          BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Giveterms()));
                  },
                  child: Icon(Icons.input)),
              title: Text('Terms', style: TextStyle())),
        ],
      ),
    );
  }
}
