import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';
import '../../Utils/ColorScheme.dart';
import '../../Utils/PageIndex.dart';
import '../../Utils/Responsive.dart';
import '../../core/utils/flitter_toast.dart';
import '../dashboar/MainScreen.dart';
import 'controller/drawer_detail_controller.dart';

class ProductsDetailScreen extends StatefulWidget {
  static String routeName = '/categoryDetailScreen';
  const ProductsDetailScreen({Key? key}) : super(key: key);

  @override
  State<ProductsDetailScreen> createState() => _ProductsDetailScreenState();
}

class _ProductsDetailScreenState extends State<ProductsDetailScreen> {
  TextEditingController textEditingController = TextEditingController();
  int index = 0;
  DrawerDetailController viewDetailController =
      Get.find<DrawerDetailController>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        disposeKeyboard();
      },
      child: Scaffold(
          body: SafeArea(
        child: Column(
          children: [
            Container(
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
                          onTap: () {},
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
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.05,
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
                        onChanged: (password) {},
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
                          prefixIcon: const Icon(
                            Icons.search_rounded,
                            color: Colors.black26,
                            size: 25,
                          ),
                          hintStyle: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.04),
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
                  const SizedBox(height: 20),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GetBuilder(
                builder: (DrawerDetailController controller) {
                  if (controller.isLoading) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  print(
                      "---------------> ${controller.productDetailCategoryList.length}");
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: ListView(
                      children: [
                        Container(
                          height: 210,
                          width: double.infinity,
                          color: Colors.white,
                          child: Image.network(
                            controller.productsDetailModel!.images[index].src,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(height: 30),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Text(
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            controller.productsDetailModel!.name,
                            style: const TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 22),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Center(
                          child: Text(
                            "\$${controller.productsDetailModel!.price}",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 22,
                                color: appTheame),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Html(data: controller.productsDetailModel!.description),
                        const SizedBox(height: 35),
                        Row(
                          children: [
                            const Text(
                              "Quantity :",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 20),
                            ),
                            const SizedBox(width: 25),
                            Container(
                              height: 50,
                              width: 90,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Colors.black45),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  children: [
                                    const SizedBox(width: 5),
                                    Text(
                                      controller.quantityIndex.toString(),
                                      style: const TextStyle(fontSize: 19),
                                    ),
                                    const Spacer(),
                                    Column(
                                      children: [
                                        GestureDetector(
                                            onTap: () {
                                              controller.quantityIndex =
                                                  controller.quantityIndex + 1;
                                              setState(() {});
                                            },
                                            child: const Icon(
                                                Icons.arrow_drop_up_outlined)),
                                        GestureDetector(
                                            onTap: () {
                                              if (controller.quantityIndex <=
                                                  0) {
                                              } else {
                                                controller.quantityIndex =
                                                    controller.quantityIndex -
                                                        1;
                                                setState(() {});
                                              }
                                            },
                                            child: const Icon(
                                                Icons.arrow_drop_down)),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
                        Row(
                          children: [
                            const Text(
                              "Colour :",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 20),
                            ),
                            const SizedBox(width: 25),
                            container(const Color(0xffAF938F)),
                            const SizedBox(width: 10),
                            container(Colors.black),
                            const SizedBox(width: 10),
                            container(const Color(0xff1F3353)),
                            const SizedBox(width: 10),
                            container(const Color(0xff0D5292)),
                          ],
                        ),
                        const SizedBox(height: 50),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () async {
                                final response =
                                    await controller.addCartItemData();
                                if (response) {
                                  showToast("has been added to your cart.");
                                } else {
                                  showToast("Something went wrong");
                                }
                              },
                              child: Container(
                                height: 45,
                                width: 165,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Center(
                                    child: Text(
                                  "Add to Cart",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 17,
                                    color: Colors.white,
                                  ),
                                )),
                              ),
                            ),
                            const Spacer(),
                            Container(
                              height: 45,
                              width: 165,
                              decoration: BoxDecoration(
                                color: appTheame,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Center(
                                  child: Text(
                                "Buy it Now",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17,
                                  color: Colors.white,
                                ),
                              )),
                            ),
                          ],
                        ),
                        const SizedBox(height: 40),
                        // getShadowBox(Column(
                        //   crossAxisAlignment: CrossAxisAlignment.start,
                        //   children: [
                        //     const SizedBox(height: 10),
                        //     shadowBoxHeader(title: "AUDIO OUTPUT"),
                        //     const SizedBox(height: 20),
                        //     getTextTile("Frequency response", "20-22000 Hz"),
                        //     getTextTile("Impedance", "36"),
                        //     getTextTile("Sound", "Spatial Audio, Stereo"),
                        //   ],
                        // )),
                        //const SizedBox(height: 30),
                        getShadowBox(Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 10),
                            shadowBoxHeader(title: "CONNECTION"),
                            const SizedBox(height: 20),
                            Html(
                                data: controller
                                    .productsDetailModel!.shortDescription),
                            // getTextTile("Connection", "3,5mm, USB, USB-C"),
                            // getTextTile("Wireless", "No"),
                            // getTextTile("Compatibility",
                            //     "Android, Nintendo Switch, PC, PS4, PSS, Xbox One, Xbox Series"),
                          ],
                        )),
                        const SizedBox(height: 30),
                        getShadowBox(
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Column(
                                children: [
                                  Image.asset("assets/fast.png", height: 70),
                                  const SizedBox(height: 15),
                                  const Text(
                                    "Free Shipping",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                ],
                              ),
                              Column(
                                children: [
                                  Image.asset("assets/delivery_time.png",
                                      height: 55),
                                  const SizedBox(height: 15),
                                  const Text(
                                    "Free Shipping",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                ],
                              ),
                              Column(
                                children: [
                                  Image.asset("assets/payment_done.png",
                                      height: 45),
                                  const SizedBox(height: 15),
                                  const Text(
                                    "Free Shipping",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Divider(thickness: 1, color: Color(0xff000000)),
                        const SizedBox(height: 25),
                        const Text(
                          "RELATED PRODUCTS",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 23),
                        ),
                        const SizedBox(height: 30),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          clipBehavior: Clip.none,
                          child: Row(
                            children: controller.productDetailCategoryList
                                .asMap()
                                .map((index, value) => MapEntry(
                                    index,
                                    Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: Container(
                                        width: 170,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.black
                                                    .withOpacity(0.4),
                                                blurRadius: 5)
                                          ],
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(11),
                                              child: Container(
                                                  height: 120,
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            11),
                                                  ),
                                                  child:
                                                      // controller
                                                      //             .productDetailCategoryList[
                                                      //                 index]
                                                      //             .image !=
                                                      //         false
                                                      //     ?
                                                      Image.network(
                                                          controller
                                                              .productDetailCategoryList[
                                                                  index]
                                                              .image!,
                                                          fit: BoxFit.cover)
                                                  // : Container(
                                                  //     color: Colors.red,
                                                  //   ),
                                                  ),
                                            ),
                                            const SizedBox(height: 15),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    viewDetailController
                                                        .productDetailCategoryList[
                                                            index]
                                                        .title,
                                                    maxLines: 2,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: const TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                  const SizedBox(height: 5),
                                                  Row(
                                                    children: const [
                                                      Icon(
                                                        Icons.star,
                                                        color:
                                                            Color(0xffFFA501),
                                                        size: 20,
                                                      ),
                                                      SizedBox(width: 5),
                                                      Text(
                                                        "4.8  | > 500 Sold",
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xff7F8E9D),
                                                            fontSize: 14),
                                                      )
                                                    ],
                                                  ),
                                                  const SizedBox(height: 5),
                                                  Text(
                                                    "\$${viewDetailController.productDetailCategoryList[index].price}",
                                                    style: const TextStyle(
                                                        fontSize: 22,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                  const SizedBox(height: 10),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )))
                                .values
                                .toList(),
                          ),
                        ),
                        const SizedBox(height: 35),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      )),
    );
  }

  Widget container(Color color) {
    return Container(
      height: 36,
      width: 36,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.black),
      ),
      child: Center(
        child: CircleAvatar(
          backgroundColor: color,
          radius: 14,
        ),
      ),
    );
  }

  Widget shadowBoxHeader({required String title}) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
        ),
      ],
    );
  }

  Widget getShadowBox(Widget child) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                  color: const Color(0xff000000).withOpacity(0.25),
                  offset: const Offset(0, 4),
                  blurRadius: 4)
            ]),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: child);
  }

  Widget getTextTile(String first, String last) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 3,
            child: Text(
              first,
              style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
            ),
          ),
          const SizedBox(width: 15),
          Expanded(
            flex: 5,
            child: Text(
              last,
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
