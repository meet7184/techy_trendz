import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:techytrendz/Utils/HeaderPart.dart';
import '../../Utils/ColorScheme.dart';
import '../../Utils/Responsive.dart';
import 'controller/favorite_controller.dart';

class FavoriteScreen extends StatefulWidget {
  final GlobalKey<ScaffoldState> _scaffoldkey;
  const FavoriteScreen(this._scaffoldkey, {Key? key}) : super(key: key);

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  //bool wishlist = false;
  FavoriteController favoriteController = Get.find<FavoriteController>();
  @override
  void initState() {
    favoriteController.getWishDataList();
    super.initState();
  }

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
          child: GetBuilder(
            builder: (FavoriteController controller) {
              if (controller.isLoading) {
                return Center(child: CircularProgressIndicator());
              }
              print("--------------> ${controller.wishList.length}");
              return SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(
                    top: Responsive.height(1, context),
                    right: Responsive.width(5, context),
                    left: Responsive.width(5, context),
                  ),
                  child: controller.wishList != null
                      ? Column(
                          children: [
                            Text(
                              "MY WISHLIST",
                              style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.065,
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontFamily: "latomedium",
                              ),
                            ),
                            SizedBox(
                              height: Responsive.height(2, context),
                            ),
                            ListView.builder(
                                itemCount: controller.wishList.length,
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: EdgeInsets.only(
                                        bottom: Responsive.height(2, context)),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow: const [
                                          BoxShadow(
                                            color: Colors.grey,
                                            blurRadius:
                                                5.0, // soften the shadow
                                            spreadRadius: 1.0,
                                          )
                                        ],
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(
                                            Responsive.width(2, context)),
                                        child: Row(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: appTheame),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                child: Image.network(
                                                  controller
                                                      .wishList[index].image,
                                                  fit: BoxFit.cover,
                                                  width: Responsive.width(
                                                      30, context),
                                                  height: Responsive.height(
                                                      15, context),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width:
                                                  Responsive.width(3, context),
                                            ),
                                            Expanded(
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    controller
                                                        .wishList[index].title,
                                                    textAlign: TextAlign.start,
                                                    maxLines: 2,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              0.05,
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      fontFamily: "latobold",
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: Responsive.height(
                                                        1, context),
                                                  ),
                                                  Text(
                                                    'M / Nude',
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                        fontSize: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            0.04,
                                                        color: Colors.black38,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        fontFamily:
                                                            "latoregular"),
                                                  ),
                                                  SizedBox(
                                                    height: Responsive.height(
                                                        1, context),
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        'PRICE : ',
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: TextStyle(
                                                            fontSize: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                0.04,
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontFamily:
                                                                "latoregular"),
                                                      ),
                                                      Text(
                                                        '\$${controller.wishList[index].price}',
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: TextStyle(
                                                            fontSize: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                0.04,
                                                            color: appTheame,
                                                            fontWeight:
                                                                FontWeight.w300,
                                                            fontFamily:
                                                                "latoregular"),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: Responsive.height(
                                                        1, context),
                                                  ),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      color: appTheame,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              4),
                                                    ),
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                        vertical: 5.0,
                                                        horizontal: 10,
                                                      ),
                                                      child: Text(
                                                        "Add To Cart",
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            fontSize: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                0.035,
                                                            fontFamily:
                                                                "poppinsmedium",
                                                            color:
                                                                Colors.white),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                }),
                          ],
                        )
                      : Expanded(
                          child: Container(
                          color: Colors.red,
                        )),
                  // : Container(
                  //     decoration: BoxDecoration(
                  //       color: Colors.white,
                  //       borderRadius: const BorderRadius.only(
                  //         topLeft: Radius.circular(40),
                  //         topRight: Radius.circular(40),
                  //       ),
                  //       boxShadow: [
                  //         BoxShadow(
                  //           color: Colors.grey.withOpacity(0.6),
                  //           blurRadius: 6.0, // soften the shadow
                  //           spreadRadius: 2.0,
                  //         ),
                  //       ],
                  //     ),
                  //     width: MediaQuery.of(context).size.width,
                  //     child: Padding(
                  //         padding: EdgeInsets.only(
                  //           top: Responsive.height(2, context),
                  //           right: Responsive.width(5, context),
                  //           left: Responsive.width(5, context),
                  //           bottom: Responsive.height(15, context),
                  //         ),
                  //         child: Column(
                  //           crossAxisAlignment: CrossAxisAlignment.center,
                  //           children: [
                  //             SizedBox(
                  //               height: Responsive.height(1, context),
                  //             ),
                  //             Text(
                  //               "MY WISHLIST",
                  //               style: TextStyle(
                  //                 fontSize:
                  //                     MediaQuery.of(context).size.width *
                  //                         0.06,
                  //                 color: Colors.black,
                  //                 fontFamily: "latomedium",
                  //               ),
                  //             ),
                  //             SizedBox(
                  //               height: Responsive.height(10, context),
                  //             ),
                  //             Column(
                  //               mainAxisAlignment: MainAxisAlignment.center,
                  //               crossAxisAlignment:
                  //                   CrossAxisAlignment.center,
                  //               children: [
                  //                 Image.asset(
                  //                   "assets/heart.png",
                  //                   height: Responsive.width(45, context),
                  //                   fit: BoxFit.fill,
                  //                 ),
                  //                 SizedBox(
                  //                   height: Responsive.height(2, context),
                  //                 ),
                  //                 Text(
                  //                   "No products added to the wishlist",
                  //                   textAlign: TextAlign.center,
                  //                   style: TextStyle(
                  //                     fontSize: MediaQuery.of(context)
                  //                             .size
                  //                             .width *
                  //                         0.05,
                  //                     color: Colors.black,
                  //                     fontFamily: "robotonormal",
                  //                   ),
                  //                 ),
                  //                 SizedBox(
                  //                   height: Responsive.height(2, context),
                  //                 ),
                  //                 Container(
                  //                   decoration: BoxDecoration(
                  //                     color: appTheame,
                  //                     borderRadius:
                  //                         BorderRadius.circular(10),
                  //                   ),
                  //                   child: Padding(
                  //                     padding: const EdgeInsets.symmetric(
                  //                       vertical: 15.0,
                  //                       horizontal: 35,
                  //                     ),
                  //                     child: Text(
                  //                       "GO SHOPPING",
                  //                       textAlign: TextAlign.center,
                  //                       style: TextStyle(
                  //                         fontSize: MediaQuery.of(context)
                  //                                 .size
                  //                                 .width *
                  //                             0.045,
                  //                         fontFamily: "latobold",
                  //                         color: Colors.white,
                  //                       ),
                  //                     ),
                  //                   ),
                  //                 ),
                  //               ],
                  //             ),
                  //           ],
                  //         )),
                  //   ),
                ),
              );
            },
          ),
        ),
        SizedBox(
          height: Responsive.height(2, context),
        ),
      ],
    ));
  }
}
