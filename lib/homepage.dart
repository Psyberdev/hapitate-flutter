import 'package:flutter/material.dart';
import 'package:hapitate/sections/foodheader.dart';
import 'package:hapitate/sections/offers.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
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
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Container(
          width: screenWidth,
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
                child: Container(
                  height: screenHeight * 0.1,
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(width: 2)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(width: 2)),
                      hintText: "Search products...",
                      suffixIcon: Icon(
                        Icons.search,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Container(
                  child: SizedBox(
                    height: 100,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: FoodHeader.headers.length,
                        itemBuilder: (context, index) {
                          return Container(
                            padding: EdgeInsets.symmetric(horizontal: 13),
                            child: Column(
                              children: [
                                Image.asset(
                                  FoodHeader.headers[index].toString(),
                                  width: 65,
                                  height: 65,
                                ),
                                Text(FoodHeader.headernames[index].toString()),
                              ],
                            ),
                          );
                        }),
                  ),
                ),
              ),
              SizedBox(
                height: 110,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: Offers.offers.length,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.017),
                        child: Image.asset(
                          Offers.offers[index].toString(),
                          width: screenWidth * 0.3,
                          fit: BoxFit.fill,
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 150,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: screenWidth * 0.02),
                        child: Image.asset(
                          "assets/images/protienbar.png",
                          width: MediaQuery.of(context).size.width * 0.46,
                        ),
                      ),
                      SizedBox(
                        width: screenWidth * 0.04,
                      ),
                      Container(
                        padding: EdgeInsets.only(right: screenWidth * 0.02),
                        child: Image.asset(
                          "assets/images/superseed.png",
                          width: MediaQuery.of(context).size.width * 0.46,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.28,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
                  child: Center(
                    child: Image.asset("assets/images/firstmeal.png"),
                  ),
                ),
              ),
              SizedBox(
                height: 300,
              )
            ],
          ),
        ),
      ),
    );
  }
}
