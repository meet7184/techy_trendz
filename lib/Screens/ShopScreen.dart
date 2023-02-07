import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:techytrendz/Screens/dashboar/MainScreen.dart';
import 'package:techytrendz/Utils/ColorScheme.dart';
import 'package:techytrendz/Utils/HeaderPart.dart';
import 'package:techytrendz/Utils/PageIndex.dart';

import '../Utils/FooterPart.dart';
import '../Utils/Responsive.dart';

//TODO : screen no 4
class ShopScreen extends StatefulWidget {
  final GlobalKey<ScaffoldState> _scaffoldkey;
  const ShopScreen(this._scaffoldkey, {Key? key}) : super(key: key);

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  final List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
  ];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          HeaderPart(widget._scaffoldkey),
          SizedBox(
            height: Responsive.height(2, context),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      children: [
                        Text(
                          "Shop",
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.08,
                              color: Colors.black,
                              fontFamily: "robotoregular"),
                        ),
                        SizedBox(
                          height: Responsive.height(2, context),
                        ),
                        Container(
                          height: Responsive.height(6, context),
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.black, width: 1.5),
                              borderRadius: BorderRadius.circular(50)),
                          child: Row(
                            children: [
                              SizedBox(
                                width: Responsive.width(2, context),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  "assets/filter.png",
                                  width: Responsive.height(3.5, context),
                                  height: Responsive.height(3.5, context),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              SizedBox(
                                width: Responsive.width(2, context),
                              ),
                              Container(
                                width: 1.5,
                                height: MediaQuery.of(context).size.height,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: Responsive.width(2, context),
                              ),
                              DropdownButtonHideUnderline(
                                child: DropdownButton2(
                                  hint: Text(
                                    'Sort by category',
                                    style: TextStyle(
                                        fontSize:
                                            MediaQuery.of(context).size.width *
                                                0.04,
                                        color: Colors.black,
                                        fontFamily: "robotoregular"),
                                  ),
                                  items: items
                                      .map(
                                        (item) => DropdownMenuItem<String>(
                                          value: item,
                                          child: Text(
                                            item,
                                            style: const TextStyle(
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),
                                      )
                                      .toList(),
                                  value: selectedValue,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedValue = value as String;
                                    });
                                  },
                                  buttonHeight: 40,
                                  buttonWidth: 150,
                                  itemHeight: 40,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: Responsive.height(2, context),
                        ),
                        AlignedGridView.count(
                            crossAxisCount: 2,
                            crossAxisSpacing: 15,
                            mainAxisSpacing: 15,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  PageIndex.currentpageindex = 5;
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const MainScreen(),
                                    ),
                                  );
                                },
                                child: Padding(
                                  padding: EdgeInsets.all(
                                      Responsive.width(2, context)),
                                  child: Column(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 5,
                                              spreadRadius: 5,
                                              color:
                                                  Colors.black.withOpacity(0.2),
                                            ),
                                          ],
                                        ),
                                        padding: const EdgeInsets.all(5),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Image.asset(
                                            'assets/shopimage.png',
                                            height:
                                                Responsive.height(20, context),
                                            width:
                                                Responsive.height(25, context),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: Responsive.height(1, context),
                                      ),
                                      Text(
                                        "HEADPHONE",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.042,
                                          color: Colors.black,
                                          fontFamily: "robotoregular",
                                        ),
                                      ),
                                      SizedBox(
                                        height: Responsive.height(1, context),
                                      ),
                                      Text(
                                        "Black Ears",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.05,
                                          color: Colors.black,
                                          fontFamily: "robotomedium",
                                        ),
                                      ),
                                      SizedBox(
                                        height: Responsive.height(0.5, context),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "\$300.00",
                                            style: TextStyle(
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.045,
                                                color: Colors.black
                                                    .withOpacity(0.6),
                                                decoration:
                                                    TextDecoration.lineThrough,
                                                decorationThickness: 1.5,
                                                decorationColor: Colors.black,
                                                fontFamily: "robotoregular"),
                                          ),
                                          Text(
                                            "\$300.00",
                                            style: TextStyle(
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.045,
                                                color: const Color(0xff5A56F1),
                                                fontFamily: "robotoregular"),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }),
                        SizedBox(
                          height: Responsive.height(2, context),
                        ),
                        Center(
                          child: Container(
                            decoration: BoxDecoration(
                              color: appTheame,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            width: Responsive.width(45, context),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 15.0),
                              child: Text(
                                "Load More",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
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
