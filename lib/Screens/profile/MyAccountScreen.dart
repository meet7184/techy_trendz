import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get_it/get_it.dart';
import 'package:techytrendz/Screens/login/Loginscreen.dart';
import 'package:techytrendz/Utils/ColorScheme.dart';
import 'package:techytrendz/Utils/HeaderPart.dart';
import 'package:techytrendz/Utils/app_controller.dart';

import '../../Utils/PageIndex.dart';
import '../../Utils/Responsive.dart';
import '../../Utils/app_prefs.dart';
import '../../Utils/global.dart';
import '../dashboar/MainScreen.dart';

class MyAccountScreen extends StatefulWidget {
//TODO : screen no 3
  final GlobalKey<ScaffoldState> _scaffoldkey;
  const MyAccountScreen(this._scaffoldkey, {Key? key}) : super(key: key);

  @override
  State<MyAccountScreen> createState() => _MyAccountScreenState();
}

class _MyAccountScreenState extends State<MyAccountScreen> {
  AppController appController = Get.find<AppController>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          HeaderPart(widget._scaffoldkey),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: Responsive.height(3, context),
                        ),
                        CircleAvatar(
                          backgroundImage: const AssetImage(
                            'assets/profile.png',
                          ),
                          radius: MediaQuery.of(context).size.width * 0.12,
                        ),
                        SizedBox(
                          height: Responsive.height(1.5, context),
                        ),
                        Text(
                          "Hello, Lorem ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.05,
                              fontFamily: "robotoregular"),
                        ),
                        SizedBox(
                          height: Responsive.height(1, context),
                        ),
                        InkWell(
                          onTap: () {
                            PageIndex.currentpageindex = 15;
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MainScreen(),
                              ),
                            );
                          },
                          child: Text(
                            "Edit Profile",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: appTheame,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.04,
                                fontFamily: "robotoregular"),
                          ),
                        ),
                        SizedBox(
                          height: Responsive.height(3, context),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(
                                  MediaQuery.of(context).size.width * 0.08),
                              topRight: Radius.circular(
                                  MediaQuery.of(context).size.width * 0.08),
                            ),
                            boxShadow: [
                              BoxShadow(
                                spreadRadius: 3,
                                blurRadius: 8,
                                color: Colors.grey.withOpacity(0.5),
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: Responsive.height(3, context),
                              ),
                              Text(
                                "Settings",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.055,
                                    fontFamily: "latomedium"),
                              ),
                              SizedBox(
                                height: Responsive.height(3, context),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal:
                                      MediaQuery.of(context).size.width * 0.05,
                                  vertical:
                                      MediaQuery.of(context).size.width * 0.03,
                                ),
                                child: InkWell(
                                  onTap: () {
                                    PageIndex.currentpageindex = 13;
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => MainScreen(),
                                      ),
                                    );
                                  },
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Orders",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.05,
                                            fontFamily: "robotoregular"),
                                      ),
                                      Icon(
                                        Icons.arrow_forward_ios,
                                        size:
                                            MediaQuery.of(context).size.width *
                                                0.05,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: Responsive.height(0.2, context),
                                color: Colors.black,
                              ),
                              InkWell(
                                onTap: () {
                                  PageIndex.currentpageindex = 16;
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => MainScreen()));
                                },
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal:
                                        MediaQuery.of(context).size.width *
                                            0.05,
                                    vertical:
                                        MediaQuery.of(context).size.width *
                                            0.03,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Addresses",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.05,
                                            fontFamily: "robotoregular"),
                                      ),
                                      Icon(
                                        Icons.arrow_forward_ios,
                                        size:
                                            MediaQuery.of(context).size.width *
                                                0.05,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: Responsive.height(0.2, context),
                                color: Colors.black,
                              ),
                              InkWell(
                                onTap: () {
                                  PageIndex.currentpageindex = 18;
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => MainScreen()));
                                },
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal:
                                        MediaQuery.of(context).size.width *
                                            0.05,
                                    vertical:
                                        MediaQuery.of(context).size.width *
                                            0.03,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Account details",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.05,
                                            fontFamily: "robotoregular"),
                                      ),
                                      Icon(
                                        Icons.arrow_forward_ios,
                                        size:
                                            MediaQuery.of(context).size.width *
                                                0.05,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: Responsive.height(0.2, context),
                                color: Colors.black,
                              ),
                              InkWell(
                                onTap: () {
                                  PageIndex.currentpageindex = 7;
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => MainScreen()));
                                },
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal:
                                        MediaQuery.of(context).size.width *
                                            0.05,
                                    vertical:
                                        MediaQuery.of(context).size.width *
                                            0.03,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Contact Us",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.05,
                                            fontFamily: "robotoregular"),
                                      ),
                                      Icon(
                                        Icons.arrow_forward_ios,
                                        size:
                                            MediaQuery.of(context).size.width *
                                                0.05,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: Responsive.height(0.2, context),
                                color: Colors.black,
                              ),
                              InkWell(
                                onTap: () {
                                  PageIndex.currentpageindex = 18;
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => MainScreen()));
                                },
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal:
                                        MediaQuery.of(context).size.width *
                                            0.05,
                                    vertical:
                                        MediaQuery.of(context).size.width *
                                            0.03,
                                  ),
                                  child: InkWell(
                                    onTap: () {
                                      PageIndex.currentpageindex = 19;
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  MainScreen()));
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Payment Shipping Return",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.05,
                                              fontFamily: "robotoregular"),
                                        ),
                                        Icon(
                                          Icons.arrow_forward_ios,
                                          size: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.05,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: Responsive.height(0.2, context),
                                color: Colors.black,
                              ),
                              InkWell(
                                onTap: () {
                                  PageIndex.currentpageindex = 18;
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => MainScreen()));
                                },
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal:
                                        MediaQuery.of(context).size.width *
                                            0.05,
                                    vertical:
                                        MediaQuery.of(context).size.width *
                                            0.03,
                                  ),
                                  child: InkWell(
                                    onTap: () {
                                      PageIndex.currentpageindex = 22;
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  MainScreen()));
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "FAQ",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.05,
                                              fontFamily: "robotoregular"),
                                        ),
                                        Icon(
                                          Icons.arrow_forward_ios,
                                          size: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.05,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: Responsive.height(0.2, context),
                                color: Colors.black,
                              ),
                              InkWell(
                                onTap: () {
                                  PageIndex.currentpageindex = 18;
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => MainScreen()));
                                },
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal:
                                        MediaQuery.of(context).size.width *
                                            0.05,
                                    vertical:
                                        MediaQuery.of(context).size.width *
                                            0.03,
                                  ),
                                  child: InkWell(
                                    onTap: () {
                                      PageIndex.currentpageindex = 20;
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  MainScreen()));
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "About Us",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.05,
                                              fontFamily: "robotoregular"),
                                        ),
                                        Icon(
                                          Icons.arrow_forward_ios,
                                          size: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.05,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: Responsive.height(0.2, context),
                                color: Colors.black,
                              ),
                              InkWell(
                                onTap: () {
                                  PageIndex.currentpageindex = 21;
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => MainScreen()));
                                },
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal:
                                        MediaQuery.of(context).size.width *
                                            0.05,
                                    vertical:
                                        MediaQuery.of(context).size.width *
                                            0.03,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Wholesale",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.05,
                                            fontFamily: "robotoregular"),
                                      ),
                                      Icon(
                                        Icons.arrow_forward_ios,
                                        size:
                                            MediaQuery.of(context).size.width *
                                                0.05,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: Responsive.height(0.2, context),
                                color: Colors.black,
                              ),
                              InkWell(
                                onTap: () {
                                  PageIndex.currentpageindex = 24;
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => MainScreen()));
                                },
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal:
                                        MediaQuery.of(context).size.width *
                                            0.05,
                                    vertical:
                                        MediaQuery.of(context).size.width *
                                            0.03,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Change Language",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.05,
                                            fontFamily: "robotoregular"),
                                      ),
                                      Icon(
                                        Icons.arrow_forward_ios,
                                        size:
                                            MediaQuery.of(context).size.width *
                                                0.05,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: Responsive.height(5, context),
                              ),
                              GestureDetector(
                                onTap: () {
                                  showDialog(
                                    context: context,
                                    builder: (ctx) => AlertDialog(
                                      title: Text(
                                        "Log Out",
                                        style: const TextStyle(
                                            color: Colors.blue,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 20),
                                      ),
                                      content: Text(
                                        "Are You Sure..",
                                        style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      actions: <Widget>[
                                        TextButton(
                                          onPressed: () {
                                            appController.userModel = null;
                                            GetIt.I.get<AppPrefs>().clear();
                                            print(
                                                "=========> ${appController.userModel}");
                                            GetIt.I
                                                .get<AppPrefs>()
                                                .setOnBoardingStatus = true;
                                            Get.offAllNamed(
                                                LoginScreen.routeName);
                                          },
                                          child: const Text(
                                            "Yes",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ),
                                        TextButton(
                                          onPressed: () {
                                            Get.back();
                                          },
                                          child: const Text(
                                            "No",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: appTheame,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 10.0,
                                      horizontal: 40,
                                    ),
                                    child: appController.userModel != null
                                        ? Text(
                                            "Log Out",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.045,
                                                fontFamily: "poppinsmedium",
                                                color: Colors.white),
                                          )
                                        : Text(
                                            "Login",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.045,
                                                fontFamily: "poppinsmedium",
                                                color: Colors.white),
                                          ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: Responsive.height(2, context),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
