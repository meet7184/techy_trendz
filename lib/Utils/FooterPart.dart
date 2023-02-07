import 'package:flutter/material.dart';
import 'package:techytrendz/Utils/ColorScheme.dart';

import 'Responsive.dart';

class FooterPart extends StatefulWidget {
  const FooterPart({Key? key}) : super(key: key);

  @override
  State<FooterPart> createState() => _FooterPartState();
}

class _FooterPartState extends State<FooterPart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff222529),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          SizedBox(
            height: Responsive.height(4, context),
          ),
          Image.asset(
            'assets/logo.png',
            fit: BoxFit.fill,
            width: Responsive.width(55, context),
            height: Responsive.width(35, context),
          ),
          SizedBox(
            height: Responsive.height(1, context),
          ),
          Text(
            "The perfect store of mobile accessories.",
            style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.045,
                color: Colors.white,
                fontFamily: "robotomedium"),
          ),
          SizedBox(
            height: Responsive.height(5, context),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "CONTACT INFO",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.047,
                      fontFamily: "poppinsmedium",
                      color: Colors.white),
                ),
                const Icon(
                  Icons.keyboard_arrow_down,
                  size: 35,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          Container(
            height: Responsive.height(0.2, context),
            color: Colors.white,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "CUSTOMER SERVICE",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.047,
                      fontFamily: "poppinsmedium",
                      color: Colors.white),
                ),
                const Icon(
                  Icons.keyboard_arrow_down,
                  size: 35,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          Container(
            height: Responsive.height(0.2, context),
            color: Colors.white,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "SUBSCRIBE FOR NEWSLETTER",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.047,
                      fontFamily: "poppinsmedium",
                      color: Colors.white),
                ),
                const Icon(
                  Icons.keyboard_arrow_down,
                  size: 35,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          SizedBox(
            height: Responsive.height(4, context),
          ),
          Text(
            "© TechyTrendz. 2022. All Rights Reserved",
            style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.041,
                color: Colors.white,
                fontFamily: "robotoregular"),
          ),
          SizedBox(
            height: Responsive.height(2, context),
          ),
          Image.asset(
            'assets/fotter.png',
            fit: BoxFit.fill,
            width: MediaQuery.of(context).size.width,
            height: Responsive.width(15, context),
          ),
          SizedBox(
            height: Responsive.height(4, context),
          ),
        ],
      ),
    );
  }
}
