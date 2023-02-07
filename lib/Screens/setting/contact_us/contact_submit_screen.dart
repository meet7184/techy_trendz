import 'package:flutter/material.dart';

import 'package:techytrendz/Utils/ColorScheme.dart';
import 'package:techytrendz/Utils/FooterPart.dart';
import 'package:techytrendz/Utils/HeaderPart.dart';

import '../../../Utils/PageIndex.dart';
import '../../../Utils/Responsive.dart';
import '../../dashboar/MainScreen.dart';

//TODO : screen no :
class ContactSuccessScreen extends StatefulWidget {
  final GlobalKey<ScaffoldState> _scaffoldkey;
  const ContactSuccessScreen(this._scaffoldkey, {Key? key}) : super(key: key);

  @override
  State<ContactSuccessScreen> createState() => _ContactSuccessScreenState();
}

class _ContactSuccessScreenState extends State<ContactSuccessScreen> {
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
                                PageIndex.contactsucessscrenname == "contactus"
                                    ? "CONTACT US"
                                    : "WholeSale",
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
                        Image.asset(
                          'assets/contactsuccess.png',
                          width: Responsive.height(20, context),
                          height: Responsive.height(20, context),
                          fit: BoxFit.fill,
                        ),
                        SizedBox(
                          height: Responsive.height(3, context),
                        ),
                        Text(
                          "Thanks for contacting us! We will be in touch with you shortly.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.055,
                              fontFamily: "latosemibold"),
                        ),
                        SizedBox(
                          height: Responsive.height(3, context),
                        ),
                        InkWell(
                          onTap: () {
                            PageIndex.currentpageindex = 3;
                            PageIndex.contactsucessscrenname = "wholesales";
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
                                "BACK TO PROFILE",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.045,
                                    fontFamily: "robotoregular",
                                    fontWeight: FontWeight.w700,
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
