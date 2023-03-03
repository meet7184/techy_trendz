import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:techytrendz/Screens/dashboar/MainScreen.dart';
import 'package:techytrendz/Utils/ColorScheme.dart';
import 'package:techytrendz/util/app_controller.dart';
import '../../Utils/HeaderPart.dart';
import '../../Utils/PageIndex.dart';
import '../../Utils/Responsive.dart';
import 'controller/cart_item_controller.dart';

//TODO : screen no 2
class CartScreen extends StatefulWidget {
  final GlobalKey<ScaffoldState> _scaffoldkey;
  const CartScreen(this._scaffoldkey, {Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  CartItemController cartItemController = Get.find<CartItemController>();

  @override
  void initState() {
    cartItemController.cartItemDataList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        HeaderPart(widget._scaffoldkey),
        Expanded(child: GetBuilder(
          builder: (CartItemController controller) {
            if (controller.isLoading) {
              return const Center(child: CircularProgressIndicator());
            }
            print(" list length ---> ${controller.list.length}");
            return controller.list != null
                ? SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(height: Responsive.height(2, context)),
                        Column(
                          children: controller.list
                              .asMap()
                              .map((index, value) => MapEntry(
                                    index,
                                    Padding(
                                      padding: EdgeInsets.only(
                                          right: Responsive.width(5, context),
                                          left: Responsive.width(5, context),
                                          bottom:
                                              Responsive.height(2, context)),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10),
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                height: 120,
                                                width: 120,
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: appTheame),
                                                  color: Colors.black,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  child: Image.network(
                                                    controller.list[index]
                                                        .featuredImage,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: Responsive.width(
                                                    2, context),
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
                                                          .list[index].name,
                                                      maxLines: 2,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: TextStyle(
                                                          fontSize: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              0.05,
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          fontFamily:
                                                              "latobold"),
                                                    ),
                                                    SizedBox(
                                                      height: Responsive.height(
                                                          1, context),
                                                    ),
                                                    Text(
                                                      'M / Nude',
                                                      textAlign:
                                                          TextAlign.start,
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
                                                          'QUANTITY : ',
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: TextStyle(
                                                              fontSize: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  0.04,
                                                              color:
                                                                  Colors.black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300,
                                                              fontFamily:
                                                                  "latoregular"),
                                                        ),
                                                        Text(
                                                          controller.list[index]
                                                              .quantity.value
                                                              .toString(),
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: TextStyle(
                                                              fontSize: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  0.04,
                                                              color:
                                                                  Colors.black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300,
                                                              fontFamily:
                                                                  "latoregular"),
                                                        ),
                                                      ],
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
                                                              color:
                                                                  Colors.black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300,
                                                              fontFamily:
                                                                  "latoregular"),
                                                        ),
                                                        Text(
                                                          '\$${controller.list[index].price}',
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
                                                                  FontWeight
                                                                      .w300,
                                                              fontFamily:
                                                                  "latoregular"),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ))
                              .values
                              .toList(),
                        ),
                        SizedBox(height: 20),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Text(
                              "Update Cart",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.053,
                                  fontFamily: "robotomedium",
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            right: Responsive.width(5, context),
                            left: Responsive.width(5, context),
                            top: Responsive.height(5, context),
                          ),
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
                            child: Column(
                              children: [
                                SizedBox(
                                  height: Responsive.height(3, context),
                                ),
                                Text(
                                  'BASKET TOTALS',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.06,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "robotomedium"),
                                ),
                                SizedBox(
                                  height: Responsive.height(3, context),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal:
                                        MediaQuery.of(context).size.width *
                                            0.05,
                                    vertical:
                                        MediaQuery.of(context).size.width *
                                            0.03,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Subtotal	",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.05,
                                            fontFamily: "robotobold"),
                                      ),
                                      Text(
                                        "\$${controller.addCartItemModel!.totals.subtotal}",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: appTheame,
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.05,
                                            fontFamily: "robotoregular"),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: Responsive.height(0.2, context),
                                  color: Colors.black,
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal:
                                        MediaQuery.of(context).size.width *
                                            0.05,
                                    vertical:
                                        MediaQuery.of(context).size.width *
                                            0.03,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Shipping	",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.05,
                                            fontFamily: "robotobold"),
                                      ),
                                      Text(
                                        "-",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: appTheame,
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.05,
                                            fontFamily: "robotoregular"),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: Responsive.height(0.2, context),
                                  color: Colors.black,
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal:
                                        MediaQuery.of(context).size.width *
                                            0.05,
                                    vertical:
                                        MediaQuery.of(context).size.width *
                                            0.03,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Total",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.05,
                                            fontFamily: "robotobold"),
                                      ),
                                      Text(
                                        "\$${controller.addCartItemModel!.totals.total}",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: appTheame,
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.05,
                                            fontFamily: "robotoregular"),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: Responsive.height(4, context),
                                ),
                                InkWell(
                                  onTap: () {
                                    PageIndex.currentpageindex = 8;
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const MainScreen()));
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: appTheame,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 12.0,
                                        horizontal: 40,
                                      ),
                                      child: Text(
                                        "Proceed to checkout",
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
                      ],
                    ),
                  )
                : Expanded(
                    child: Center(
                        child: Text(
                    "Add to Cart",
                    style: TextStyle(fontSize: 34),
                  )));
          },
        ))
      ],
    ));
  }
}
