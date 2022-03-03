import 'package:flutter/material.dart';
import 'package:hapitate/components/usertoken.dart';
import 'package:hapitate/sections/drawer.dart';

import '../homepage.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  late String username;
  late String password;
  void credentialValidate() {
    if (_formKey.currentState!.validate()) {
      setState(() {
        UserToken.getUserToken(username, password);
      });
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        title: Row(
          children: [
            Image.asset("assets/images/logo.png"),
            SizedBox(
              width: 80,
            ),
            Icon(
              Icons.person_outline_rounded,
              size: 30,
            ),
            SizedBox(
              width: screenWidth * 0.02,
            ),
            Icon(
              Icons.shopping_bag_outlined,
              size: 27,
            )
          ],
        ),
      ),
      drawer: DrawerData(),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Login",
                textScaleFactor: 2.0,
              ),
              Text("Username"),
              TextFormField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(width: 2)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(width: 2)),
                  hintText: "Username",
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Usernamme cannot be empty";
                  }
                  username = value;
                  return null;
                },
              ),
              Text("Password"),
              TextFormField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(width: 2)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(width: 2)),
                  hintText: "Password",
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Password cannot be empty";
                  }
                  password = value;
                  return null;
                },
              ),
              ElevatedButton(
                  onPressed: () {
                    credentialValidate();
                  },
                  child: Text("Log in"))
            ],
          ),
        ),
      )),
    );
  }
}
