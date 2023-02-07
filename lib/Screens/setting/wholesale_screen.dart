import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:techytrendz/Utils/ColorScheme.dart';

import '../../Utils/HeaderPart.dart';
import '../../Utils/PageIndex.dart';
import '../../Utils/Responsive.dart';
import '../dashboar/MainScreen.dart';

class WholesaleScreen extends StatefulWidget {
  final GlobalKey<ScaffoldState> _scaffoldkey;
  const WholesaleScreen(this._scaffoldkey, {Key? key}) : super(key: key);

  @override
  State<WholesaleScreen> createState() => _WholesaleScreenState();
}

class _WholesaleScreenState extends State<WholesaleScreen> {
  final List<String> items = [
    'Online',
    'Cod',
  ];
  String? selectedValue;

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
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                                      "Wholesale",
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
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Name",
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.04,
                                    fontFamily: "robotoregular",
                                    color: appTheame),
                              ),
                              SizedBox(
                                height: Responsive.height(0.5, context),
                              ),
                              TextFormField(
                                cursorColor: Colors.black,
                                autofocus: false,
                                cursorHeight:
                                    MediaQuery.of(context).size.width * 0.05,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize:
                                        MediaQuery.of(context).size.width *
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
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.04,
                                  ),
                                  // Here is key idea
                                ),
                              ),
                              SizedBox(
                                height: Responsive.height(2, context),
                              ),
                              Text(
                                "Company Name",
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.04,
                                    fontFamily: "robotoregular",
                                    color: appTheame),
                              ),
                              SizedBox(
                                height: Responsive.height(0.5, context),
                              ),
                              TextFormField(
                                cursorColor: Colors.black,
                                autofocus: false,
                                cursorHeight:
                                    MediaQuery.of(context).size.width * 0.05,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize:
                                        MediaQuery.of(context).size.width *
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
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Colors.black,
                                      width: 1.5,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  hintText: 'Company Name',
                                  hintStyle: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.04,
                                  ),
                                  // Here is key idea
                                ),
                              ),
                              SizedBox(
                                height: Responsive.height(2, context),
                              ),
                              Text(
                                "Shipping Address",
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.04,
                                    fontFamily: "robotoregular",
                                    color: appTheame),
                              ),
                              SizedBox(
                                height: Responsive.height(0.5, context),
                              ),
                              TextFormField(
                                cursorColor: Colors.black,
                                autofocus: false,
                                cursorHeight:
                                    MediaQuery.of(context).size.width * 0.05,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize:
                                        MediaQuery.of(context).size.width *
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
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Colors.black,
                                      width: 1.5,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  hintText: 'Address Line ',
                                  hintStyle: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.04,
                                  ),
                                  // Here is key idea
                                ),
                              ),
                              SizedBox(
                                height: Responsive.height(0.5, context),
                              ),
                              TextFormField(
                                cursorColor: Colors.black,
                                autofocus: false,
                                cursorHeight:
                                    MediaQuery.of(context).size.width * 0.05,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize:
                                        MediaQuery.of(context).size.width *
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
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Colors.black,
                                      width: 1.5,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  hintText: 'City',
                                  hintStyle: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.04,
                                  ),
                                  // Here is key idea
                                ),
                              ),
                              SizedBox(
                                height: Responsive.height(0.5, context),
                              ),
                              TextFormField(
                                cursorColor: Colors.black,
                                autofocus: false,
                                cursorHeight:
                                    MediaQuery.of(context).size.width * 0.05,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize:
                                        MediaQuery.of(context).size.width *
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
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Colors.black,
                                      width: 1.5,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  hintText: 'state',
                                  hintStyle: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.04,
                                  ),
                                  // Here is key idea
                                ),
                              ),
                              SizedBox(
                                height: Responsive.height(2, context),
                              ),
                              Text(
                                "Billing Address",
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.04,
                                    fontFamily: "robotoregular",
                                    color: appTheame),
                              ),
                              SizedBox(
                                height: Responsive.height(0.5, context),
                              ),
                              TextFormField(
                                cursorColor: Colors.black,
                                autofocus: false,
                                cursorHeight:
                                    MediaQuery.of(context).size.width * 0.05,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize:
                                        MediaQuery.of(context).size.width *
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
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Colors.black,
                                      width: 1.5,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  hintText: 'Address Line ',
                                  hintStyle: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.04,
                                  ),
                                  // Here is key idea
                                ),
                              ),
                              SizedBox(
                                height: Responsive.height(0.5, context),
                              ),
                              TextFormField(
                                cursorColor: Colors.black,
                                autofocus: false,
                                cursorHeight:
                                    MediaQuery.of(context).size.width * 0.05,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize:
                                        MediaQuery.of(context).size.width *
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
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Colors.black,
                                      width: 1.5,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  hintText: 'City',
                                  hintStyle: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.04,
                                  ),
                                  // Here is key idea
                                ),
                              ),
                              SizedBox(
                                height: Responsive.height(0.5, context),
                              ),
                              TextFormField(
                                cursorColor: Colors.black,
                                autofocus: false,
                                cursorHeight:
                                    MediaQuery.of(context).size.width * 0.05,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize:
                                        MediaQuery.of(context).size.width *
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
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Colors.black,
                                      width: 1.5,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  hintText: 'state',
                                  hintStyle: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.04,
                                  ),
                                  // Here is key idea
                                ),
                              ),
                              SizedBox(
                                height: Responsive.height(2, context),
                              ),
                              Text(
                                "Email Address",
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.04,
                                    fontFamily: "robotoregular",
                                    color: appTheame),
                              ),
                              SizedBox(
                                height: Responsive.height(0.5, context),
                              ),
                              TextFormField(
                                cursorColor: Colors.black,
                                autofocus: false,
                                cursorHeight:
                                    MediaQuery.of(context).size.width * 0.05,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize:
                                        MediaQuery.of(context).size.width *
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
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Colors.black,
                                      width: 1.5,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  hintText: 'Email Address',
                                  hintStyle: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.04,
                                  ),
                                  // Here is key idea
                                ),
                              ),
                              SizedBox(
                                height: Responsive.height(2, context),
                              ),
                              Text(
                                "Phone Number",
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.04,
                                    fontFamily: "robotoregular",
                                    color: appTheame),
                              ),
                              SizedBox(
                                height: Responsive.height(0.5, context),
                              ),
                              TextFormField(
                                cursorColor: Colors.black,
                                autofocus: false,
                                cursorHeight:
                                    MediaQuery.of(context).size.width * 0.05,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize:
                                        MediaQuery.of(context).size.width *
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
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Colors.black,
                                      width: 1.5,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  hintText: 'Phone Number',
                                  hintStyle: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.04,
                                  ),
                                  // Here is key idea
                                ),
                              ),
                              SizedBox(
                                height: Responsive.height(2, context),
                              ),
                              Text(
                                "Subject",
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.04,
                                    fontFamily: "robotoregular",
                                    color: appTheame),
                              ),
                              SizedBox(
                                height: Responsive.height(0.5, context),
                              ),
                              TextFormField(
                                cursorColor: Colors.black,
                                autofocus: false,
                                cursorHeight:
                                    MediaQuery.of(context).size.width * 0.05,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize:
                                        MediaQuery.of(context).size.width *
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
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Colors.black,
                                      width: 1.5,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  hintText: 'Subject',
                                  hintStyle: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.04,
                                  ),
                                  // Here is key idea
                                ),
                              ),
                              SizedBox(
                                height: Responsive.height(2, context),
                              ),
                              Text(
                                "Product Name",
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.04,
                                    fontFamily: "robotoregular",
                                    color: appTheame),
                              ),
                              SizedBox(
                                height: Responsive.height(0.5, context),
                              ),
                              TextFormField(
                                cursorColor: Colors.black,
                                autofocus: false,
                                cursorHeight:
                                    MediaQuery.of(context).size.width * 0.05,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize:
                                        MediaQuery.of(context).size.width *
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
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Colors.black,
                                      width: 1.5,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  hintText: 'Product Name',
                                  hintStyle: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.04,
                                  ),
                                  // Here is key idea
                                ),
                              ),
                              SizedBox(
                                height: Responsive.height(2, context),
                              ),
                              Text(
                                "Product Link",
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.04,
                                    fontFamily: "robotoregular",
                                    color: appTheame),
                              ),
                              SizedBox(
                                height: Responsive.height(0.5, context),
                              ),
                              TextFormField(
                                cursorColor: Colors.black,
                                autofocus: false,
                                cursorHeight:
                                    MediaQuery.of(context).size.width * 0.05,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize:
                                        MediaQuery.of(context).size.width *
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
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Colors.black,
                                      width: 1.5,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  hintText: 'Product Link',
                                  hintStyle: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.04,
                                  ),
                                  // Here is key idea
                                ),
                              ),
                              SizedBox(
                                height: Responsive.height(2, context),
                              ),
                              Text(
                                "Quantity",
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.04,
                                    fontFamily: "robotoregular",
                                    color: appTheame),
                              ),
                              SizedBox(
                                height: Responsive.height(0.5, context),
                              ),
                              TextFormField(
                                cursorColor: Colors.black,
                                autofocus: false,
                                cursorHeight:
                                    MediaQuery.of(context).size.width * 0.05,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize:
                                        MediaQuery.of(context).size.width *
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
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Colors.black,
                                      width: 1.5,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  hintText: 'Quantity',
                                  hintStyle: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.04,
                                  ),
                                  // Here is key idea
                                ),
                              ),
                              SizedBox(
                                height: Responsive.height(2, context),
                              ),
                              Text(
                                "Payment Method",
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.04,
                                    fontFamily: "robotoregular",
                                    color: appTheame),
                              ),
                              SizedBox(
                                height: Responsive.height(0.5, context),
                              ),
                              DropdownButtonFormField2(
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.zero,
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Colors.black,
                                        width: 1.5,
                                      ),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.02))),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Colors.black,
                                        width: 1.5,
                                      ),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.02))),
                                  hintText: 'First Name',
                                  hintStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.04,
                                      fontFamily: 'popinsnormal'),
                                ),
                                hint: const Text(
                                  'Paymnet Method',
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.black),
                                ),
                                icon: const Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.black45,
                                ),
                                iconSize: 30,
                                buttonHeight: 50,
                                buttonPadding:
                                    const EdgeInsets.only(left: 20, right: 10),
                                dropdownDecoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                items: items
                                    .map((item) => DropdownMenuItem<String>(
                                          value: item,
                                          child: Text(
                                            item,
                                            style: const TextStyle(
                                              fontSize: 14,
                                            ),
                                          ),
                                        ))
                                    .toList(),
                                validator: (value) {
                                  if (value == null) {
                                    return 'Paymnet Method';
                                  }
                                },
                                onChanged: (value) {
                                  //Do something when changing the item if you want.
                                },
                                onSaved: (value) {
                                  selectedValue = value.toString();
                                },
                              ),
                              SizedBox(
                                height: Responsive.height(2, context),
                              ),
                              InkWell(
                                onTap: () {
                                  PageIndex.currentpageindex = 23;
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => MainScreen(),
                                    ),
                                  );
                                },
                                child: Center(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: appTheame,
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow: const [
                                          BoxShadow(
                                              color: Colors.grey,
                                              blurRadius:
                                                  10, // soften the shadow
                                              offset: Offset(0, 5)),
                                        ]),
                                    width:
                                        MediaQuery.of(context).size.width * 0.5,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10.0),
                                      child: Text(
                                        "Submit",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.053,
                                            fontFamily: "poppinsmedium",
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: Responsive.height(0.5, context),
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
