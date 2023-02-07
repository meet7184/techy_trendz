import 'package:flutter/material.dart';
import 'package:techytrendz/Utils/ColorScheme.dart';
import 'package:techytrendz/Utils/FooterPart.dart';
import 'package:techytrendz/Utils/HeaderPart.dart';
import '../Utils/Responsive.dart';

class AboutusScreen extends StatefulWidget {
  final GlobalKey<ScaffoldState> _scaffoldkey;
  const AboutusScreen(this._scaffoldkey, {Key? key}) : super(key: key);

  @override
  State<AboutusScreen> createState() => _AboutusScreenState();
}

class _AboutusScreenState extends State<AboutusScreen> {
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
                                "About Us",
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.07,
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
                  SizedBox(
                    height: Responsive.height(5, context),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: appTheame,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 15.0,
                              horizontal: 20,
                            ),
                            child: Text(
                              "Techy Trendz is a North American based Retail/ Wholesale reseller/supplier for Mobile Cellphone Accessories. We pride ourselves in customer service and quality cellphone accessories. Come let us “Elevate Your Style” ",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.045,
                                  fontFamily: "robotoregular",
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: Responsive.height(5, context),
                  ),
                  const FooterPart(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
