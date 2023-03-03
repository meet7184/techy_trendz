import 'package:flutter/material.dart';
import 'package:techytrendz/Utils/HeaderPart.dart';

import '../../Utils/Responsive.dart';

//TODO : screen no
class ChangeLanguageScreen extends StatefulWidget {
  final GlobalKey<ScaffoldState> _scaffoldkey;
  const ChangeLanguageScreen(this._scaffoldkey, {Key? key}) : super(key: key);

  @override
  State<ChangeLanguageScreen> createState() => _ChangeLanguageScreenState();
}

class _ChangeLanguageScreenState extends State<ChangeLanguageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                          "CHANGE LANGUAGE",
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.06,
                            color: Colors.black,
                            fontFamily: "latomedium",
                          ),
                        ),
                        SizedBox(
                          height: Responsive.height(3, context),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border:
                                  Border.all(width: 1.5, color: Colors.black),
                              borderRadius: BorderRadius.circular(10)),
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            children: [
                              SizedBox(
                                width: Responsive.width(2, context),
                              ),
                              Image.asset(
                                "assets/us.png",
                                width: Responsive.height(3.5, context),
                                height: Responsive.height(3.5, context),
                                fit: BoxFit.fill,
                              ),
                              SizedBox(
                                width: Responsive.width(4, context),
                              ),
                              Text(
                                "English",
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.045,
                                    fontFamily: "latoregular"),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: Responsive.height(3, context),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                width: 1.5,
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(10)),
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            children: [
                              SizedBox(
                                width: Responsive.width(2, context),
                              ),
                              Image.asset(
                                "assets/spainsh.png",
                                width: Responsive.height(3.5, context),
                                height: Responsive.height(3.5, context),
                                fit: BoxFit.fill,
                              ),
                              SizedBox(
                                width: Responsive.width(4, context),
                              ),
                              Text(
                                "Spanish",
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.045,
                                    fontFamily: "latoregular"),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: Responsive.height(3, context),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                width: 1.5,
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(10)),
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            children: [
                              SizedBox(
                                width: Responsive.width(2, context),
                              ),
                              Image.asset(
                                "assets/france.png",
                                width: Responsive.height(3.5, context),
                                height: Responsive.height(3.5, context),
                                fit: BoxFit.fill,
                              ),
                              SizedBox(
                                width: Responsive.width(4, context),
                              ),
                              Text(
                                "French",
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.045,
                                    fontFamily: "latoregular"),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: Responsive.height(3, context),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                width: 1.5,
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(10)),
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            children: [
                              SizedBox(
                                width: Responsive.width(2, context),
                              ),
                              Image.asset(
                                "assets/afrikaans.png",
                                width: Responsive.height(3.5, context),
                                height: Responsive.height(3.5, context),
                                fit: BoxFit.fill,
                              ),
                              SizedBox(
                                width: Responsive.width(4, context),
                              ),
                              Text(
                                "Afrikaans",
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.045,
                                    fontFamily: "latoregular"),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: Responsive.height(15, context),
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
      )),
    );
  }
}
