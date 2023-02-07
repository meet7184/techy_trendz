import 'package:flutter/material.dart';

import '../../Utils/ColorScheme.dart';
import '../../Utils/HeaderPart.dart';
import '../../Utils/Responsive.dart';

//TODO : screen no 18
class AccountDetail extends StatefulWidget {
  final GlobalKey<ScaffoldState> _scaffoldkey;
  const AccountDetail(this._scaffoldkey, {Key? key}) : super(key: key);

  @override
  State<AccountDetail> createState() => _AccountDetailState();
}

class _AccountDetailState extends State<AccountDetail> {
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
                          "ACCOUNT DETAILS",
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.06,
                            color: Colors.black,
                            fontFamily: "latobold",
                          ),
                        ),
                        SizedBox(
                          height: Responsive.height(3, context),
                        ),
                        TextFormField(
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
                            hintText: 'First Name',
                            hintStyle: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.04,
                            ),
                            // Here is key idea
                          ),
                        ),
                        SizedBox(
                          height: Responsive.height(2, context),
                        ),
                        TextFormField(
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
                            hintText: 'Last Name',
                            hintStyle: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.04,
                            ),
                            // Here is key idea
                          ),
                        ),
                        SizedBox(
                          height: Responsive.height(2, context),
                        ),
                        TextFormField(
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
                            hintText: 'Display Name',
                            hintStyle: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.04,
                            ),
                            // Here is key idea
                          ),
                        ),
                        SizedBox(
                          height: Responsive.height(1, context),
                        ),
                        Text(
                          "This will be how your name will be displayed in the account section and in reviews",
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.035,
                            color: Colors.black.withOpacity(0.5),
                          ),
                        ),
                        SizedBox(
                          height: Responsive.height(2, context),
                        ),
                        TextFormField(
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
                            hintText: 'Email Address',
                            hintStyle: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.04,
                            ),
                            // Here is key idea
                          ),
                        ),
                        SizedBox(
                          height: Responsive.height(3, context),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.6),
                                blurRadius: 6.0, // soften the shadow
                                spreadRadius: 2.0,
                              ),
                            ],
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Column(
                            children: [
                              SizedBox(
                                height: Responsive.height(2, context),
                              ),
                              Text(
                                "PASSWORD CHANGE",
                                style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.06,
                                  color: Colors.black,
                                  fontFamily: "latobold",
                                ),
                              ),
                              SizedBox(
                                height: Responsive.height(2, context),
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
                                  hintText: 'Current Password',
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
                                  hintText: 'New Password',
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
                                  hintText: 'Confirm New Password',
                                  hintStyle: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.04,
                                  ),
                                  // Here is key idea
                                ),
                              ),
                              SizedBox(
                                height: Responsive.height(3, context),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: Responsive.height(3, context),
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
                              "SAVE CHANGES",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.045,
                                fontFamily: "latobold",
                                color: Colors.white,
                              ),
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
      )),
    );
  }
}
