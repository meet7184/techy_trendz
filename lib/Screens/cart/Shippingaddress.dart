import 'package:flutter/material.dart';

import '../../Utils/ColorScheme.dart';
import '../../Utils/HeaderPart.dart';
import '../../Utils/PageIndex.dart';
import '../../Utils/Responsive.dart';
import '../dashboar/MainScreen.dart';

//TODO : screen no 8
class Shippingaddress extends StatefulWidget {
  final GlobalKey<ScaffoldState> _scaffoldkey;
  const Shippingaddress(this._scaffoldkey, {Key? key}) : super(key: key);

  @override
  State<Shippingaddress> createState() => _ShippingaddressState();
}

class _ShippingaddressState extends State<Shippingaddress> {
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
                  right: Responsive.width(3, context),
                  left: Responsive.width(3, context),
                  top: Responsive.height(1, context)),
              child: Container(
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
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: Responsive.width(2, context),
                      right: Responsive.width(2, context),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: Responsive.height(2, context),
                        ),
                        Text(
                          "SHIPPING ADDRESS",
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.06,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontFamily: "latomedium"),
                        ),
                        SizedBox(
                          height: Responsive.height(2, context),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: Responsive.width(2, context),
                            right: Responsive.width(2, context),
                          ),
                          child: SizedBox(
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
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Colors.black,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                hintText: 'First Name',
                                hintStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.04,
                                    fontFamily: 'popinsnormal'),
                                // Here is key idea
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: Responsive.height(1.5, context),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: Responsive.width(2, context),
                            right: Responsive.width(2, context),
                          ),
                          child: SizedBox(
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
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Colors.black,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                hintText: 'Last Name',
                                hintStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.04,
                                    fontFamily: 'popinsnormal'),
                                // Here is key idea
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: Responsive.height(1.5, context),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: Responsive.width(2, context),
                            right: Responsive.width(2, context),
                          ),
                          child: SizedBox(
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
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Colors.black,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                hintText: 'Address',
                                hintStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.04,
                                    fontFamily: 'popinsnormal'),
                                // Here is key idea
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: Responsive.height(1.5, context),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: Responsive.width(2, context),
                            right: Responsive.width(2, context),
                          ),
                          child: SizedBox(
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
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Colors.black,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                hintText: 'Apartment, suite ,etc..',
                                hintStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.04,
                                    fontFamily: 'popinsnormal'),
                                // Here is key idea
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: Responsive.height(1.5, context),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: Responsive.width(2, context),
                            right: Responsive.width(2, context),
                          ),
                          child: SizedBox(
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
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Colors.black,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                hintText: 'City',
                                hintStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.04,
                                    fontFamily: 'popinsnormal'),
                                // Here is key idea
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: Responsive.height(1.5, context),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: Responsive.width(2, context),
                            right: Responsive.width(2, context),
                          ),
                          child: SizedBox(
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
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Colors.black,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                hintText: 'State',
                                hintStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.04,
                                    fontFamily: 'popinsnormal'),
                                // Here is key idea
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: Responsive.height(1.5, context),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: Responsive.width(2, context),
                            right: Responsive.width(2, context),
                          ),
                          child: SizedBox(
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
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Colors.black,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                hintText: 'Country',
                                hintStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.04,
                                    fontFamily: 'popinsnormal'),
                                // Here is key idea
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: Responsive.height(1.5, context),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: Responsive.width(2, context),
                            right: Responsive.width(2, context),
                          ),
                          child: SizedBox(
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
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Colors.black,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                hintText: 'PIN Code',
                                hintStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.04,
                                    fontFamily: 'popinsnormal'),
                                // Here is key idea
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: Responsive.height(1.5, context),
                        ),
                        Padding(
                          padding: EdgeInsets.all(Responsive.width(2, context)),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  spreadRadius: 3,
                                  blurRadius: 8,
                                  color: Colors.grey.withOpacity(0.5),
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: Responsive.width(2, context),
                                  vertical: Responsive.height(2, context)),
                              child: Column(
                                children: [
                                  SizedBox(
                                    child: TextFormField(
                                      cursorColor: Colors.black,
                                      autofocus: false,
                                      cursorHeight:
                                          MediaQuery.of(context).size.width *
                                              0.05,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.04),
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
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Colors.black,
                                            width: 1.5,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        hintText: 'Coupan Code',
                                        hintStyle: TextStyle(
                                            color: Colors.black,
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.04,
                                            fontFamily: 'popinsnormal'),
                                        // Here is key idea
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: Responsive.height(2, context),
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      width: Responsive.width(100, context),
                                      decoration: BoxDecoration(
                                        color: appTheame,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 10.0,
                                          horizontal: 40,
                                        ),
                                        child: Text(
                                          "Apply Coupan",
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
                          ),
                        ),
                        SizedBox(
                          height: Responsive.height(1.5, context),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 10.0,
                              horizontal: 35,
                            ),
                            child: Text(
                              "Continue To Shipping",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.045,
                                  fontFamily: "poppinsmedium",
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: Responsive.height(1.5, context),
                        ),
                        InkWell(
                          onTap: () {
                            PageIndex.currentpageindex = 2;
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MainScreen(),
                              ),
                            );
                          },
                          child: Text(
                            "< Return to Cart",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.045,
                                fontFamily: "poppinsmedium",
                                color: appTheame),
                          ),
                        ),
                        SizedBox(
                          height: Responsive.height(3, context),
                        ),
                      ],
                    ),
                  )),
            ),
          ),
        ),
      ],
    ));
  }
}
