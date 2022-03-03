import 'package:flutter/material.dart';
import 'package:hapitate/components/footer.dart';
import 'package:hapitate/components/routes.dart';
import 'package:hapitate/screens/loginpage.dart';

import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: Footer(),
      routes: {
        ScreenRoutes.home: (context) => HomePage(),
        ScreenRoutes.login: (context) => LoginPage(),
      },
    );
  }
}
