import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(
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
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 5),
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
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 5),
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
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 5),
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
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 5),
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
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 5),
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
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 5),
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
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 5),
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
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 5),
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
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 5),
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
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 5),
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
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 5),
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
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 5),
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
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 5),
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
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 5),
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
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 5),
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
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 5),
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
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 5),
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
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 5),
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
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 5),
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
          ),
        ));
  }
}

//color: Color(0xffe1eaea),
