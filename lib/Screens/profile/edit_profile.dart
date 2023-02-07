import 'package:flutter/material.dart';

import '../../Utils/ColorScheme.dart';
import '../../Utils/HeaderPart.dart';
import '../../Utils/Responsive.dart';

//TODO : screen no 15
class EditProfileScreen extends StatefulWidget {
  final GlobalKey<ScaffoldState> _scaffoldkey;
  const EditProfileScreen(this._scaffoldkey, {Key? key}) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
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
                  bottom: Responsive.height(2, context),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: Responsive.height(1, context),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.black,
                      backgroundImage: const AssetImage(
                        'assets/cam.jpg',
                      ),
                      radius: MediaQuery.of(context).size.width * 0.12,
                    ),
                    SizedBox(
                      height: Responsive.height(1.5, context),
                    ),
                    Text(
                      "Hello, Lorem ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.05,
                          fontFamily: "robotoregular"),
                    ),
                    SizedBox(
                      height: Responsive.height(1, context),
                    ),
                    InkWell(
                      onTap: () {
                        // PageIndex.currentpageindex = 15;
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => const MainScreen(),
                        //   ),
                        // );
                      },
                      child: Text(
                        "Edit Profile Photo",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: appTheame,
                            fontSize: MediaQuery.of(context).size.width * 0.04,
                            fontFamily: "robotoregular"),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
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
                            hintText: 'Phone Number',
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
                            hintText: 'Email Id',
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
                              "SAVE",
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
                  ],
                ),
              ),
            ),
          ),
        ))
      ],
    ));
  }
}
