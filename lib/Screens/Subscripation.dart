import 'package:flutter/material.dart';

import '../Utils/ColorScheme.dart';
import '../Utils/HeaderPart.dart';
import '../Utils/Responsive.dart';

//TODO : screen no 14
class SubscriptionScreen extends StatefulWidget {
  final GlobalKey<ScaffoldState> _scaffoldkey;
  const SubscriptionScreen(this._scaffoldkey, {Key? key}) : super(key: key);

  @override
  State<SubscriptionScreen> createState() => _SubscriptionScreenState();
}

class _SubscriptionScreenState extends State<SubscriptionScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                      bottom: Responsive.height(15, context),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: Responsive.height(1, context),
                        ),
                        Text(
                          "SUBSCRIPTION",
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.06,
                            color: Colors.black,
                            fontFamily: "latoregular",
                          ),
                        ),
                        SizedBox(
                          height: Responsive.height(10, context),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/info.png",
                              height: Responsive.width(45, context),
                              fit: BoxFit.fill,
                            ),
                            SizedBox(
                              height: Responsive.height(2, context),
                            ),
                            Text(
                              "You have no active subscriptions.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.05,
                                color: Colors.black,
                                fontFamily: "robotonormal",
                              ),
                            ),
                            SizedBox(
                              height: Responsive.height(2, context),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: appTheame,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 15.0,
                                  horizontal: 35,
                                ),
                                child: Text(
                                  "GO SHOPPING",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.045,
                                    fontFamily: "latobold",
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )),
              ),
            ),
          ),
        ),
        SizedBox(
          height: Responsive.height(2, context),
        ),
      ],
    ));
  }
}
