import 'package:flutter/material.dart';
import 'package:techytrendz/Screens/dashboar/MainScreen.dart';
import 'package:techytrendz/Utils/ColorScheme.dart';
import 'package:techytrendz/Utils/PageIndex.dart';

import 'Responsive.dart';
import '../widget/common_text_field.dart';

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
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: CustomTextField(
                validator: (val) =>
                    val!.trim().isEmpty ? "field required" : null,
                textFieldType: TextFieldType.search,
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
