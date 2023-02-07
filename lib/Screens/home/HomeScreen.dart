import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:techytrendz/Screens/home/controller/home_controller.dart';
import 'package:techytrendz/Screens/home/recommend_view_screen.dart';
import 'package:techytrendz/Utils/ColorScheme.dart';
import 'package:techytrendz/Utils/FooterPart.dart';
import 'package:techytrendz/Utils/HeaderPart.dart';
import 'package:techytrendz/Utils/Responsive.dart';
import 'package:techytrendz/Utils/global.dart';
import '../drawer/products_detail_screen.dart';
import 'widget/carouselwithindicator.dart';

class HomeScreen extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldkey;
  const HomeScreen(this.scaffoldkey, {Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isFavourite = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          HeaderPart(widget.scaffoldkey),
          Expanded(
            child: GetBuilder(
              builder: (HomeController controller) {
                if (controller.isLoading) {
                  return const Center(child: CircularProgressIndicator());
                }
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: Responsive.height(2, context),
                      ),
                      const CarouselWithIndicator(),
                      SizedBox(
                        height: Responsive.height(2, context),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Column(
                          children: [
                            Text(
                              "Shop By Category",
                              style: TextStyle(
                                shadows: const [
                                  Shadow(
                                      color: Colors.black,
                                      offset: Offset(0, -5))
                                ],
                                fontFamily: "latoregular",
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.055,
                                color: Colors.transparent,
                                decoration: TextDecoration.underline,
                                decorationColor: Colors.black,
                                decorationThickness: 2,
                              ),
                            ),
                            SizedBox(
                              height: Responsive.height(2, context),
                            ),
                            SingleChildScrollView(
                              clipBehavior: Clip.none,
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: List.generate(
                                    controller.shopByCategoryList.length,
                                    (index) => SizedBox(
                                          width: 90,
                                          child: Column(
                                            children: [
                                              CircleAvatar(
                                                backgroundColor: Colors.black,
                                                radius: 33.0,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(13),
                                                  child: Image.network(
                                                      controller
                                                          .shopByCategoryList[
                                                              index]
                                                          .image),
                                                  //"assets/homebanner.png",
                                                ),
                                              ),
                                              SizedBox(
                                                height: Responsive.height(
                                                    1, context),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 1),
                                                child: Text(
                                                  controller
                                                      .shopByCategoryList[index]
                                                      .title,
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontSize:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.039,
                                                    color: Colors.black,
                                                    fontFamily: "latoregular",
                                                  ),
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              ),
                                            ],
                                          ),
                                        )),
                              ),
                            ),
                            SizedBox(
                              height: Responsive.height(3, context),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Recommend for you",
                                  style: TextStyle(
                                    shadows: const [
                                      Shadow(
                                          color: Colors.black,
                                          offset: Offset(0, -5))
                                    ],
                                    fontFamily: "latoregular",
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.055,
                                    color: Colors.transparent,
                                    decoration: TextDecoration.underline,
                                    decorationColor: Colors.black,
                                    decorationThickness: 2,
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    Get.toNamed(RecommendViewScreen.routeName);
                                  },
                                  child: Text(
                                    "View all",
                                    style: TextStyle(
                                        fontFamily: "latoregular",
                                        fontSize:
                                            MediaQuery.of(context).size.width *
                                                0.04,
                                        color: appTheame),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: Responsive.height(3, context),
                            ),
                            AlignedGridView.count(
                                crossAxisCount: 2,
                                crossAxisSpacing: 25,
                                mainAxisSpacing: 25,
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount:
                                    controller.recommendedProductsList.length,
                                itemBuilder: (context, index) {
                                  return Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                              spreadRadius: 2,
                                              blurRadius: 8,
                                              color:
                                                  Colors.black.withOpacity(0.2))
                                        ]),
                                    child: InkWell(
                                      onTap: () {
                                        Get.toNamed(
                                            ProductsDetailScreen.routeName,
                                            arguments: controller
                                                .recommendedProductsList[index]
                                                .id);
                                      },
                                      child: Column(
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            child: Image.network(
                                              controller
                                                  .recommendedProductsList[
                                                      index]
                                                  .image,
                                              height: Responsive.height(
                                                  15, context),
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          SizedBox(
                                            height:
                                                Responsive.height(0.6, context),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                  height: Responsive.height(
                                                      1, context),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(horizontal: 2),
                                                  child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Expanded(
                                                        child: Text(
                                                          controller
                                                              .recommendedProductsList[
                                                                  index]
                                                              .title,
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  "latomedium",
                                                              fontSize: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  0.048,
                                                              color:
                                                                  Colors.black),
                                                        ),
                                                      ),
                                                      GestureDetector(
                                                          onTap: () async {
                                                            if (isFavourite) {
                                                              isFavourite =
                                                                  false;
                                                            } else {
                                                              final response = await controller.wishList(
                                                                  appController
                                                                      .userModel!
                                                                      .data
                                                                      .id,
                                                                  controller
                                                                      .recommendedProductsList[
                                                                          index]
                                                                      .id);
                                                              isFavourite =
                                                                  true;
                                                              // if (response) {
                                                              //   isFavourite =
                                                              //       true;
                                                              // } else {
                                                              //   isFavourite =
                                                              //       false;
                                                              // }
                                                            }
                                                            setState(() {});
                                                          },
                                                          child: isFavourite ==
                                                                  false
                                                              ? Icon(
                                                                  Icons
                                                                      .favorite_border,
                                                                  size: 25)
                                                              : Icon(
                                                                  Icons
                                                                      .favorite,
                                                                  color: Colors
                                                                      .red,
                                                                  size: 25)),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: Responsive.height(
                                                      0.6, context),
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
                                                      "${controller.recommendedProductsList[index].rating} | > 500 sold",
                                                      style: TextStyle(
                                                          fontFamily:
                                                              "latomedium",
                                                          fontSize: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              0.035,
                                                          color:
                                                              Colors.black45),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: Responsive.height(
                                                      0.6, context),
                                                ),
                                                Text(
                                                  "\$${controller.recommendedProductsList[index].price}",
                                                  style: TextStyle(
                                                      fontFamily: "latobold",
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              0.045,
                                                      color: Colors.black),
                                                ),
                                                SizedBox(
                                                  height: Responsive.height(
                                                      1, context),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                }),
                            SizedBox(
                              height: Responsive.height(5, context),
                            ),
                          ],
                        ),
                      ),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(
                            'assets/topbg.png',
                            width: MediaQuery.of(context).size.width,
                            height: Responsive.height(45, context),
                            fit: BoxFit.fill,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height: Responsive.height(2, context)),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Top Rated Products",
                                    style: TextStyle(
                                      shadows: const [
                                        Shadow(
                                            color: Colors.white,
                                            offset: Offset(0, -5))
                                      ],
                                      fontFamily: "latoregular",
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.055,
                                      color: Colors.transparent,
                                      decoration: TextDecoration.underline,
                                      decorationColor: Colors.white,
                                      decorationThickness: 2,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: Responsive.height(3, context),
                                ),
                                SingleChildScrollView(
                                  clipBehavior: Clip.none,
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: List.generate(
                                      controller.ratedProductsList.length,
                                      (index) => Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          width: Responsive.width(38, context),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                    spreadRadius: 2,
                                                    blurRadius: 8,
                                                    color: Colors.black
                                                        .withOpacity(0.2))
                                              ]),
                                          child: Column(
                                            children: [
                                              controller
                                                          .ratedProductsList[
                                                              index]
                                                          .image ==
                                                      false
                                                  ? ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15),
                                                      child: Image.asset(
                                                        "assets/watch.png",
                                                        height:
                                                            Responsive.height(
                                                                15, context),
                                                        width: MediaQuery.of(
                                                                context)
                                                            .size
                                                            .width,
                                                        fit: BoxFit.fill,
                                                      ),
                                                    )
                                                  : ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15),
                                                      child: Image.network(
                                                        controller
                                                            .ratedProductsList[
                                                                index]
                                                            .image,
                                                        height:
                                                            Responsive.height(
                                                                15, context),
                                                        width: MediaQuery.of(
                                                                context)
                                                            .size
                                                            .width,
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                              SizedBox(
                                                height: Responsive.height(
                                                    0.6, context),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 8.0),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      controller
                                                          .ratedProductsList[
                                                              index]
                                                          .title,
                                                      maxLines: 2,
                                                      style: TextStyle(
                                                          fontFamily:
                                                              "latomedium",
                                                          fontSize: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              0.048,
                                                          color: Colors.black),
                                                    ),
                                                    SizedBox(
                                                      height: Responsive.height(
                                                          0.6, context),
                                                    ),
                                                    Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        const Icon(
                                                          Icons.star,
                                                          size: 18,
                                                          color: Colors.amber,
                                                        ),
                                                        Text(
                                                          "${controller.ratedProductsList[index].rating} | > 500 sold",
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  "latomedium",
                                                              fontSize: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  0.035,
                                                              color: Colors
                                                                  .black45),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: Responsive.height(
                                                          0.6, context),
                                                    ),
                                                    Text(
                                                      "\$${controller.ratedProductsList[index].price}",
                                                      style: TextStyle(
                                                          fontFamily:
                                                              "latobold",
                                                          fontSize: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              0.045,
                                                          color: Colors.black),
                                                    ),
                                                    SizedBox(
                                                      height: Responsive.height(
                                                          0.8, context),
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                //_TopRatedList(context, topratedlist),
                                SizedBox(
                                  height: Responsive.height(4, context),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: Responsive.height(4, context),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        clipBehavior: Clip.none,
                        child: Row(
                          children: List.generate(
                            controller.bannerList.length,
                            (index) => Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.network(
                                      controller.bannerList[index].image,
                                      height: Responsive.height(20, context),
                                      width: Responsive.width(50, context),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Container(
                                    height: Responsive.height(20, context),
                                    width: Responsive.width(50, context),
                                    decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            controller.bannerList[index].title,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.06,
                                                color: Colors.white,
                                                fontFamily: "latobold"),
                                          ),
                                          SizedBox(
                                              height: Responsive.height(
                                                  1, context)),
                                          Text(
                                            controller
                                                .bannerList[index].categoryText,
                                            style: TextStyle(
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.045,
                                                color: Colors.white,
                                                fontFamily: "latoregular"),
                                          ),
                                          SizedBox(
                                            height:
                                                Responsive.height(1, context),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                vertical: 5.0,
                                                horizontal: 30,
                                              ),
                                              child: Text(
                                                "Shop Now",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.04,
                                                    fontFamily: "poppinsmedium",
                                                    color: Colors.black),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: Responsive.height(4, context),
                      ),
                      const FooterPart(),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
