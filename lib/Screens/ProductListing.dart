import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../Utils/HeaderPart.dart';
import '../Utils/Responsive.dart';

//TODO : screen no 12
class ProductListing extends StatefulWidget {
  final GlobalKey<ScaffoldState> _scaffoldkey;
  const ProductListing(this._scaffoldkey, {Key? key}) : super(key: key);

  @override
  State<ProductListing> createState() => _ProductListingState();
}

class _ProductListingState extends State<ProductListing> {
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: Responsive.height(2, context),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "MOBILE CHARGERS",
                        style: TextStyle(
                          shadows: const [
                            Shadow(color: Colors.black, offset: Offset(0, -5))
                          ],
                          fontFamily: "latoregular",
                          fontSize: MediaQuery.of(context).size.width * 0.055,
                          color: Colors.transparent,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.black,
                          decorationThickness: 2,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: Responsive.height(2, context),
                    ),
                    AlignedGridView.count(
                        crossAxisCount: 2,
                        crossAxisSpacing: 25,
                        mainAxisSpacing: 25,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      spreadRadius: 2,
                                      blurRadius: 8,
                                      color: Colors.black.withOpacity(0.2))
                                ]),
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      BoxShadow(
                                        spreadRadius: 2,
                                        blurRadius: 8,
                                        color: Colors.black.withOpacity(0.2),
                                        offset: const Offset(0, 3),
                                      )
                                    ],
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.asset(
                                      'assets/mobilecharger.png',
                                      height: Responsive.height(15, context),
                                      width: MediaQuery.of(context).size.width,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: Responsive.height(2, context),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                            child: Text(
                                              "Mi 10W Wall Chr..",
                                              style: TextStyle(
                                                  fontFamily: "latomedium",
                                                  fontSize:
                                                      MediaQuery.of(context)
                                                              .size
                                                              .width *
                                                          0.048,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black),
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                          const Icon(
                                            Icons.favorite_border,
                                            color: Colors.black,
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: Responsive.height(0.6, context),
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          const Icon(
                                            Icons.star,
                                            size: 18,
                                            color: Colors.amber,
                                          ),
                                          Text(
                                            "4.8 | > 500 sold",
                                            style: TextStyle(
                                                fontFamily: "latomedium",
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.035,
                                                color: Colors.black45),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: Responsive.height(0.6, context),
                                      ),
                                      Text(
                                        "\$219",
                                        style: TextStyle(
                                            fontFamily: "latobold",
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.045,
                                            color: Colors.black),
                                      ),
                                      SizedBox(
                                        height: Responsive.height(2, context),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          );
                        }),
                  ],
                ),
              ),
              SizedBox(
                height: Responsive.height(4, context),
              ),
              // const FooterPart(),
            ],
          ),
        ))
      ],
    ));
  }
}
