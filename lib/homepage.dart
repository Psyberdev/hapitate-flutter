import 'package:flutter/material.dart';
import 'package:hapitate/components/footer.dart';
import 'package:hapitate/components/productfetcher.dart';
import 'package:hapitate/models/productmodel.dart';
import 'package:hapitate/sections/drawer.dart';
import 'package:hapitate/sections/foodheader.dart';
import 'package:hapitate/sections/offers.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ProductLogModel> productList = [];
  void initState() {
    super.initState();
    getProduct();
    print(productList.length);
  }

  void getProduct() async {
    ProductFetch pf = new ProductFetch();
    await pf.productFetcher();
    productList = pf.productList;
    setState(() {});
  }

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
      drawer: DrawerData(),
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
              ),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                        vertical: MediaQuery.of(context).size.height * 0.04),
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.05),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 5),
                                    child: Text(
                                      "Know More",
                                      textScaleFactor: 1.5,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 5),
                                        child: GestureDetector(
                                          child: Text(
                                            "About Us",
                                            textScaleFactor: 1.4,
                                            style: TextStyle(
                                                color: Colors.blue.shade500),
                                          ),
                                          onTap: () {},
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 5),
                                        child: GestureDetector(
                                          child: Text(
                                            "FAQ",
                                            textScaleFactor: 1.4,
                                            style: TextStyle(
                                                color: Colors.blue.shade500),
                                          ),
                                          onTap: () {},
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 5),
                                        child: GestureDetector(
                                          child: Text(
                                            "Blog",
                                            textScaleFactor: 1.4,
                                            style: TextStyle(
                                                color: Colors.blue.shade500),
                                          ),
                                          onTap: () {},
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 5),
                                        child: GestureDetector(
                                          child: Text(
                                            "Career",
                                            textScaleFactor: 1.4,
                                            style: TextStyle(
                                                color: Colors.blue.shade500),
                                          ),
                                          onTap: () {},
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 5),
                                        child: GestureDetector(
                                          child: Text(
                                            "Contact Us",
                                            textScaleFactor: 1.4,
                                            style: TextStyle(
                                                color: Colors.blue.shade500),
                                          ),
                                          onTap: () {},
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.1,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 5),
                                    child: Text(
                                      "Customer Support",
                                      textScaleFactor: 1.5,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 5),
                                        child: GestureDetector(
                                          child: Text(
                                            "My account",
                                            textScaleFactor: 1.4,
                                            style: TextStyle(
                                                color: Colors.blue.shade500),
                                          ),
                                          onTap: () {},
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 5),
                                        child: GestureDetector(
                                          child: Text(
                                            "Track your Order",
                                            textScaleFactor: 1.4,
                                            style: TextStyle(
                                                color: Colors.blue.shade500),
                                          ),
                                          onTap: () {},
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 5),
                                        child: GestureDetector(
                                          child: Text(
                                            "My Wishlist",
                                            textScaleFactor: 1.4,
                                            style: TextStyle(
                                                color: Colors.blue.shade500),
                                          ),
                                          onTap: () {},
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 5),
                                        child: GestureDetector(
                                          child: Text(
                                            "Compare",
                                            textScaleFactor: 1.4,
                                            style: TextStyle(
                                                color: Colors.blue.shade500),
                                          ),
                                          onTap: () {},
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 5),
                                        child: GestureDetector(
                                          child: Text(
                                            "Logout",
                                            textScaleFactor: 1.4,
                                            style: TextStyle(
                                                color: Colors.blue.shade500),
                                          ),
                                          onTap: () {},
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.width * 0.1,
                          ),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 4),
                                    child: Text(
                                      "Store Policy",
                                      textScaleFactor: 1.5,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 5),
                                        child: GestureDetector(
                                          child: Text(
                                            "Return Policy",
                                            textScaleFactor: 1.4,
                                            style: TextStyle(
                                                color: Colors.blue.shade500),
                                          ),
                                          onTap: () {},
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 5),
                                        child: GestureDetector(
                                          child: Text(
                                            "Terms of Use",
                                            textScaleFactor: 1.4,
                                            style: TextStyle(
                                                color: Colors.blue.shade500),
                                          ),
                                          onTap: () {},
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 5),
                                        child: GestureDetector(
                                          child: Text(
                                            "Privacy Policy",
                                            textScaleFactor: 1.4,
                                            style: TextStyle(
                                                color: Colors.blue.shade500),
                                          ),
                                          onTap: () {},
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 5),
                                        child: GestureDetector(
                                          child: Text(
                                            "Payments",
                                            textScaleFactor: 1.4,
                                            style: TextStyle(
                                                color: Colors.blue.shade500),
                                          ),
                                          onTap: () {},
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.1,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 5),
                                    child: Text(
                                      "Join us",
                                      textScaleFactor: 1.5,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 5),
                                        child: GestureDetector(
                                          child: Text(
                                            "Sell on Hapitate",
                                            textScaleFactor: 1.4,
                                            style: TextStyle(
                                                color: Colors.blue.shade500),
                                          ),
                                          onTap: () {},
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 5),
                                        child: GestureDetector(
                                          child: Text(
                                            "Become an Affiliate",
                                            textScaleFactor: 1.4,
                                            style: TextStyle(
                                                color: Colors.blue.shade500),
                                          ),
                                          onTap: () {},
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 5),
                                        child: GestureDetector(
                                          child: Text(
                                            "Advertise on Hapitate",
                                            textScaleFactor: 1.4,
                                            style: TextStyle(
                                                color: Colors.blue.shade500),
                                          ),
                                          onTap: () {},
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 5),
                                        child: GestureDetector(
                                          child: Text(
                                            "eMail Us",
                                            textScaleFactor: 1.4,
                                            style: TextStyle(
                                                color: Colors.blue.shade500),
                                          ),
                                          onTap: () {},
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 5),
                                        child: GestureDetector(
                                          child: Text(
                                            "Chat with Us",
                                            textScaleFactor: 1.4,
                                            style: TextStyle(
                                                color: Colors.blue.shade500),
                                          ),
                                          onTap: () {},
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.07,
                        top: MediaQuery.of(context).size.height * 0.03),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Image.asset(
                            "assets/images/social/facebook.png",
                            height: 35,
                            width: 35,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.04,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Image.asset(
                            "assets/images/social/whatsapp.png",
                            height: 35,
                            width: 35,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.03,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Image.asset(
                            "assets/images/social/pinterest.png",
                            height: 40,
                            width: 40,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.04,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Image.asset(
                            "assets/images/social/linkedin.png",
                            height: 30,
                            width: 30,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.04,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Image.asset(
                            "assets/images/social/instagram.png",
                            height: 40,
                            width: 40,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.04,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Image.asset(
                            "assets/images/social/youtube.png",
                            height: 35,
                            width: 35,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.04,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Image.asset(
                            "assets/images/social/wifi.png",
                            height: 35,
                            width: 35,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.03),
                    child: Image.asset(
                      "assets/images/social/footerlogo.png",
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      //bottomNavigationBar: Footer(),
    );
  }
}
