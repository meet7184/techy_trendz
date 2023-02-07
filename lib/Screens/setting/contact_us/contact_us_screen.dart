import 'package:flutter/material.dart';
import 'package:techytrendz/Screens/dashboar/MainScreen.dart';
import 'package:techytrendz/Utils/ColorScheme.dart';
import 'package:techytrendz/Utils/FooterPart.dart';
import 'package:techytrendz/Utils/HeaderPart.dart';
import 'package:techytrendz/Utils/PageIndex.dart';

import '../../../Utils/Responsive.dart';

//TODO : screen no: 7
class ContactUsScreen extends StatefulWidget {
  final GlobalKey<ScaffoldState> _scaffoldkey;
  const ContactUsScreen(this._scaffoldkey, {Key? key}) : super(key: key);

  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
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
                                "CONTACT US",
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
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                spreadRadius: 3,
                                blurRadius: 8,
                                color: Colors.grey.withOpacity(0.5),
                              ),
                            ],
                          ),
                          width: MediaQuery.of(context).size.width,
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/location.png",
                                color: appTheame,
                                width: Responsive.height(6, context),
                                height: Responsive.height(6, context),
                                fit: BoxFit.fill,
                              ),
                              SizedBox(
                                height: Responsive.height(2, context),
                              ),
                              Text(
                                "3096 Thunder Road, Craig, United State",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.04,
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
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                spreadRadius: 3,
                                blurRadius: 8,
                                color: Colors.grey.withOpacity(0.5),
                              ),
                            ],
                          ),
                          padding: const EdgeInsets.all(10),
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/email.png",
                                color: appTheame,
                                width: Responsive.height(6, context),
                                height: Responsive.height(6, context),
                                fit: BoxFit.fill,
                              ),
                              SizedBox(
                                height: Responsive.height(2, context),
                              ),
                              Text(
                                "techytrendz@info.com",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.04,
                                    fontFamily: "robotoregular"),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: Responsive.height(3, context),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                spreadRadius: 3,
                                blurRadius: 8,
                                color: Colors.grey.withOpacity(0.5),
                              ),
                            ],
                          ),
                          padding: const EdgeInsets.all(10),
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                "assets/phone.png",
                                color: appTheame,
                                width: Responsive.height(6, context),
                                height: Responsive.height(6, context),
                                fit: BoxFit.fill,
                              ),
                              SizedBox(
                                height: Responsive.height(2, context),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/us.png",
                                        width: Responsive.height(3, context),
                                        height: Responsive.height(3, context),
                                        fit: BoxFit.fill,
                                      ),
                                      SizedBox(
                                        width: Responsive.width(2, context),
                                      ),
                                      Text(
                                        "(305)763-1755",
                                        style: TextStyle(
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.04,
                                            fontFamily: "latoregular"),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/canada.png",
                                        width: Responsive.height(3, context),
                                        height: Responsive.height(3, context),
                                        fit: BoxFit.fill,
                                      ),
                                      SizedBox(
                                        width: Responsive.width(2, context),
                                      ),
                                      Text(
                                        "(647)967-7848",
                                        style: TextStyle(
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.04,
                                            fontFamily: "latoregular"),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: Responsive.height(3, context),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Text(
                          "Send A Message",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.055,
                              fontWeight: FontWeight.w700,
                              fontFamily: "latoregular"),
                        ),
                        SizedBox(
                          height: Responsive.height(3, context),
                        ),
                        SizedBox(
                          child: TextFormField(
                            cursorColor: Colors.black,
                            autofocus: false,
                            cursorHeight:
                                MediaQuery.of(context).size.width * 0.05,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.04),
                            keyboardType: TextInputType.text,
                            onFieldSubmitted: (value) {},
                            //This will obscure text dynamically
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(
                                left: Responsive.width(3, context),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.black,
                                  width: 1.5,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.black,
                                  width: 1.5,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              hintText: 'Name',
                              hintStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.04,
                                  fontFamily: 'popinsnormal'),
                              // Here is key idea
                            ),
                          ),
                        ),
                        SizedBox(
                          height: Responsive.height(2, context),
                        ),
                        SizedBox(
                          child: TextFormField(
                            cursorColor: Colors.black,
                            autofocus: false,
                            cursorHeight:
                                MediaQuery.of(context).size.width * 0.05,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.04),
                            keyboardType: TextInputType.text,
                            onFieldSubmitted: (value) {},
                            //This will obscure text dynamically
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(
                                left: Responsive.width(3, context),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.black,
                                  width: 1.5,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.black,
                                  width: 1.5,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              hintText: 'Email',
                              hintStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.04,
                                  fontFamily: 'popinsnormal'),
                              // Here is key idea
                            ),
                          ),
                        ),
                        SizedBox(
                          height: Responsive.height(2, context),
                        ),
                        SizedBox(
                          child: TextFormField(
                            cursorColor: Colors.black,
                            autofocus: false,
                            cursorHeight:
                                MediaQuery.of(context).size.width * 0.05,
                            maxLines: 5,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.04),
                            keyboardType: TextInputType.text,
                            onFieldSubmitted: (value) {},
                            //This will obscure text dynamically
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(
                                  left: Responsive.width(3, context),
                                  top: Responsive.width(5, context)),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.black,
                                  width: 1.5,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.black,
                                  width: 1.5,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              hintText: 'Message',
                              hintStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.04,
                                  fontFamily: 'popinsnormal'),
                              // Here is key idea
                            ),
                          ),
                        ),
                        SizedBox(
                          height: Responsive.height(2, context),
                        ),
                        InkWell(
                          onTap: () {
                            PageIndex.currentpageindex = 23;
                            PageIndex.contactsucessscrenname = "contactus";
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MainScreen(),
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
                                vertical: 15.0,
                                horizontal: 50,
                              ),
                              child: Text(
                                "SUBMIT",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.045,
                                    fontFamily: "robotoregular",
                                    color: Colors.white),
                              ),
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
