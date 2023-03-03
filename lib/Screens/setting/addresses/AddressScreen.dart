import 'package:flutter/material.dart';
import 'package:techytrendz/Screens/dashboar/MainScreen.dart';
import 'package:techytrendz/Utils/HeaderPart.dart';
import 'package:techytrendz/Utils/PageIndex.dart';

import '../../../Utils/ColorScheme.dart';
import '../../../Utils/Responsive.dart';

//TODO : screen no 16
class AddressScreen extends StatefulWidget {
  final GlobalKey<ScaffoldState> _scaffoldkey;
  const AddressScreen(this._scaffoldkey, {Key? key}) : super(key: key);
  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  bool address = false;
  bool remember = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: address
          ? Container(
              decoration: BoxDecoration(
                color: appTheame,
                shape: BoxShape.circle,
              ),
              padding: const EdgeInsets.all(10),
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: MediaQuery.of(context).size.width * 0.08,
              ),
            )
          : null,
      body: SafeArea(
        child: Column(
          children: [
            HeaderPart(widget._scaffoldkey),
            SizedBox(
              height: Responsive.height(1, context),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(
                    top: Responsive.height(1, context),
                    right: Responsive.width(5, context),
                    left: Responsive.width(5, context),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.6),
                          blurRadius: 6.0, // soften the shadow
                          spreadRadius: 2.0,
                        ),
                      ],
                    ),
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: Responsive.height(2, context),
                        right: Responsive.width(5, context),
                        left: Responsive.width(5, context),
                        bottom: Responsive.height(5, context),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: Responsive.height(1, context),
                          ),
                          Text(
                            "ADDRESSES",
                            style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.06,
                              color: Colors.black,
                              fontFamily: "latosemibold",
                            ),
                          ),
                          SizedBox(height: Responsive.height(1.5, context)),
                          Text(
                            "The following addresses will be used on the checkout page by default.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.045,
                              color: Colors.black,
                              fontFamily: "latomedium",
                            ),
                          ),
                          SizedBox(
                            height: Responsive.height(3, context),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 5.0, // soften the shadow
                                  spreadRadius: 1.0,
                                )
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 15,
                                vertical: 10,
                              ),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: Responsive.height(1, context),
                                  ),
                                  Text(
                                    "Billing address",
                                    style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.055,
                                      color: Colors.black,
                                      fontFamily: "latobold",
                                    ),
                                  ),
                                  SizedBox(
                                    height: Responsive.height(2, context),
                                  ),
                                  Text(
                                    "You have not set up this type of address yet.",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.045,
                                      color: Colors.black.withOpacity(0.6),
                                      fontFamily: "latoregular",
                                    ),
                                  ),
                                  SizedBox(
                                    height: Responsive.height(2, context),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      PageIndex.currentpageindex = 17;
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const MainScreen(),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: appTheame,
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 10.0,
                                          horizontal: 10,
                                        ),
                                        child: Text(
                                          "ADD ADDRESS",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.035,
                                              fontFamily: "latomedium",
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: Responsive.height(1, context),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: Responsive.height(3, context),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 5.0, // soften the shadow
                                  spreadRadius: 1.0,
                                )
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 15,
                                vertical: 10,
                              ),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: Responsive.height(1, context),
                                  ),
                                  Text(
                                    "Shipping address",
                                    style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.055,
                                      color: Colors.black,
                                      fontFamily: "latobold",
                                    ),
                                  ),
                                  SizedBox(
                                    height: Responsive.height(2, context),
                                  ),
                                  Text(
                                    "You have not set up this type of address yet.",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.045,
                                      color: Colors.black.withOpacity(0.6),
                                      fontFamily: "latoregular",
                                    ),
                                  ),
                                  SizedBox(
                                    height: Responsive.height(2, context),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: appTheame,
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10.0,
                                        horizontal: 10,
                                      ),
                                      child: Text(
                                        "ADD ADDRESS",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.035,
                                            fontFamily: "latomedium",
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: Responsive.height(1, context),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
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
    );
  }
}

/// addresses screen
// Column(
// children: [
// Text(
// "ADDRESSES",
// style: TextStyle(
// fontSize:
// MediaQuery.of(context).size.width * 0.065,
// color: Colors.black,
// fontFamily: "latobold",
// ),
// ),
// SizedBox(
// height: Responsive.height(3, context),
// ),
// ListView.builder(
// itemCount: 2,
// physics: const NeverScrollableScrollPhysics(),
// shrinkWrap: true,
// itemBuilder: (context, index) {
// return Padding(
// padding: EdgeInsets.only(
// bottom: Responsive.height(2, context)),
// child: Container(
// decoration: BoxDecoration(
// color: Colors.white,
// borderRadius: BorderRadius.circular(15),
// boxShadow: const [
// BoxShadow(
// color: Colors.grey,
// blurRadius:
// 5.0, // soften the shadow
// spreadRadius: 1.0,
// )
// ],
// ),
// child: Padding(
// padding: const EdgeInsets.symmetric(
// horizontal: 15,
// vertical: 15,
// ),
// child: Column(
// children: [
// SizedBox(
// height:
// Responsive.height(1, context),
// ),
// Row(
// mainAxisAlignment:
// MainAxisAlignment
//     .spaceBetween,
// crossAxisAlignment:
// CrossAxisAlignment.start,
// children: [
// Text(
// "Jane Doe",
// style: TextStyle(
// fontSize:
// MediaQuery.of(context)
//     .size
//     .width *
// 0.045,
// color: Colors.black,
// fontFamily: "latobold",
// ),
// ),
// Text(
// "Edit",
// style: TextStyle(
// fontSize:
// MediaQuery.of(context)
//     .size
//     .width *
// 0.04,
// color: appTheame,
// fontFamily: "latoregular",
// ),
// ),
// ],
// ),
// SizedBox(
// height:
// Responsive.height(1, context),
// ),
// Text(
// "3 Newbridge court chino hills, CA 91709, United States.",
// style: TextStyle(
// fontSize: MediaQuery.of(context)
//     .size
//     .width *
// 0.04,
// color: Colors.black
//     .withOpacity(0.6),
// fontFamily: "latoregular",
// ),
// ),
// Row(
// crossAxisAlignment:
// CrossAxisAlignment.center,
// children: [
// Checkbox(
// materialTapTargetSize:
// MaterialTapTargetSize
//     .shrinkWrap,
// value: remember,
// activeColor: Colors.black,
// onChanged: (val) {
// remember = val!;
// setState(() {});
// },
// ),
// Text(
// "Use as the shipping address",
// style: TextStyle(
// fontSize:
// MediaQuery.of(context)
//     .size
//     .width *
// 0.04,
// fontFamily: "latoregular",
// ),
// ),
// ],
// ),
// ],
// ),
// ),
// ),
// );
// }),
// ],
// )
