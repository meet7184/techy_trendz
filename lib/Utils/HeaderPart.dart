import 'package:flutter/material.dart';
import 'package:techytrendz/Screens/dashboar/MainScreen.dart';
import 'package:techytrendz/Utils/ColorScheme.dart';
import 'package:techytrendz/Utils/PageIndex.dart';

import 'Responsive.dart';

class HeaderPart extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldkey;

  const HeaderPart(this.scaffoldkey, {Key? key}) : super(key: key);

  @override
  State<HeaderPart> createState() => _HeaderPartState();
}

class _HeaderPartState extends State<HeaderPart> {
  String searcherror = "";
  TextEditingController passcontroller = TextEditingController();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Container(
        color: appTheame,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    child: Image.asset(
                      "assets/menu.png",
                      width: Responsive.width(9, context),
                      height: Responsive.width(9, context),
                      fit: BoxFit.fill,
                      color: Colors.white,
                    ),
                    onTap: () {
                      widget.scaffoldkey.currentState?.openDrawer();
                    },
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          "assets/logoicon.png",
                          height: Responsive.height(6, context),
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Techy Trendz",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.05,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontFamily: "latoregular"),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          PageIndex.currentpageindex = 2;
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MainScreen(),
                            ),
                          );
                        },
                        child: Icon(
                          Icons.shopping_cart,
                          size: Responsive.width(8, context),
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Responsive.height(2, context),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Responsive.width(5, context)),
              child: SizedBox(
                child: TextField(
                  controller: passcontroller,
                  onChanged: (password) {
                    if (password.isNotEmpty) {
                      searcherror = "";
                      setState(() {});
                    }
                  },
                  keyboardType: TextInputType.text,
                  cursorColor: Colors.black,
                  textAlign: TextAlign.start,
                  cursorHeight: MediaQuery.of(context).size.width * 0.06,
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.04),
                  decoration: InputDecoration(
                    hintText: "Search anyting...",
                    fillColor: Colors.white,
                    filled: true,
                    errorText: searcherror,
                    prefixIcon: const Icon(
                      Icons.search_rounded,
                      color: Colors.black26,
                      size: 25,
                    ),
                    hintStyle: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.04),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.white,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.white,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    contentPadding: const EdgeInsets.all(16),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
