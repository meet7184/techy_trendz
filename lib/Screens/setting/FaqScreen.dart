import 'package:flutter/material.dart';

import '../../Utils/ColorScheme.dart';
import '../../Utils/HeaderPart.dart';
import '../../Utils/Responsive.dart';
import '../FaqDetail.dart';

class FaqScreen extends StatefulWidget {
  final GlobalKey<ScaffoldState> _scaffoldkey;
  const FaqScreen(this._scaffoldkey, {Key? key}) : super(key: key);

  @override
  State<FaqScreen> createState() => _FaqScreenState();
}

class _FaqScreenState extends State<FaqScreen> {
  List<FaqDetail> servicefaq = [
    FaqDetail("1.  Which shipping company do you use ?",
        "We ship orders via USPS, Fedex, UPS or DHL Express, Canada Post, UK Royal mail"),
    FaqDetail("2.When will I receive my order ?",
        "Yes, you cantry us for free 30 days. if you want, we’ll provide you with a free"),
    FaqDetail("3. What Payments do you accept ?",
        "Yes, you cantry us for free 30 days. if you want, we’ll provide you with a free"),
    FaqDetail("4. How is the Quality of your items ?",
        "Yes, you cantry us for free 30 days. if you want, we’ll provide you with a free"),
    FaqDetail("5. Is there Warranty on your products ?",
        "Yes, you cantry us for free 30 days. if you want, we’ll provide you with a free"),
    FaqDetail("6. What is the Return Policy ?",
        "Yes, you cantry us for free 30 days. if you want, we’ll provide you with a free"),
    FaqDetail("7. Can i get bulk discount for large orders ?",
        "Yes, you cantry us for free 30 days. if you want, we’ll provide you with a free"),
  ];
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
                  SizedBox(
                    height: Responsive.height(2, context),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/headphone.png',
                                width: MediaQuery.of(context).size.width,
                                height: Responsive.height(20, context),
                                fit: BoxFit.fill,
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: Responsive.height(20, context),
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.6),
                              ),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "FAQ",
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.06,
                                          color: Colors.white,
                                          fontFamily: "latobold"),
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
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 0.0, vertical: 10.0),
                          child: Text(
                            "Generally Asked Question",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.05,
                                color: Colors.black,
                                fontFamily: "latobold"),
                          ),
                        ),
                        ListView.builder(
                            itemCount: servicefaq.length,
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemBuilder: (con, index) {
                              return Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: Responsive.height(1, context)),
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      border: Border.all(
                                        color: appTheame,
                                        width: 2,
                                      )),
                                  child: ExpansionTile(
                                    iconColor: Colors.black,
                                    title: Text(
                                      servicefaq[index].title,
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.04,
                                          color: Colors.black),
                                    ),
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: Responsive.width(3, context),
                                            right: Responsive.width(3, context),
                                            bottom:
                                                Responsive.height(2, context)),
                                        child: Text(
                                          servicefaq[index].desc,
                                          style: TextStyle(
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.04),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            })
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
