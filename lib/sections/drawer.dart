import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hapitate/components/routes.dart';

class DrawerData extends StatefulWidget {
  @override
  State<DrawerData> createState() => _DrawerDataState();
}

class _DrawerDataState extends State<DrawerData> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
      child: ListView(
        children: ListTile.divideTiles(
          context: context,
          tiles: [
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, ScreenRoutes.login);
              },
              leading: Icon(
                Icons.person_outline_rounded,
                size: 27,
              ),
              title: Align(
                alignment: Alignment(-1.4, 0),
                child: Text(
                  "Login & Signup",
                  textScaleFactor: 1.3,
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
              ),
            ),
            ListTile(
              title: Text(
                "Healthy Breakfast",
                textScaleFactor: 1.3,
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
            ),
            ListTile(
              title: Text(
                "Protien Snacks",
                textScaleFactor: 1.3,
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
            ),
            ListTile(
              title: Text(
                "Vita Beverages",
                textScaleFactor: 1.3,
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
            ),
            ListTile(
              title: Text(
                "Organic Grocery",
                textScaleFactor: 1.3,
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
            ),
            ListTile(
              title: Text(
                "Superfoods",
                textScaleFactor: 1.3,
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
            ),
            ListTile(
              title: Text(
                "Wellness",
                textScaleFactor: 1.3,
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
            ),
            ListTile(
              title: Text(
                "Pet Lovers",
                textScaleFactor: 1.3,
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
            ),
            ListTile(
              title: Text(
                "My Order",
                textScaleFactor: 1.3,
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
            ),
            ListTile(
              title: Text(
                "Compare",
                textScaleFactor: 1.3,
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
            ),
            ListTile(
              title: Text(
                "My WishList",
                textScaleFactor: 1.3,
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
            ),
            ListTile(
              title: Text(
                "Track your Order",
                textScaleFactor: 1.3,
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
            ),
            ListTile(
              title: Text(
                "Lost Password",
                textScaleFactor: 1.3,
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
            ),
            ListTile(
              title: Text(
                "Help Center",
                textScaleFactor: 1.3,
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ).toList(),
      ),
    ));
  }
}
