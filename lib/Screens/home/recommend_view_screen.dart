import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:techytrendz/Screens/home/controller/home_controller.dart';
import 'package:techytrendz/Utils/Responsive.dart';
import '../../Utils/ColorScheme.dart';
import '../../Utils/PageIndex.dart';
import '../../core/utils/flitter_toast.dart';
import '../dashboar/MainScreen.dart';

//TODO : screen no  11
class RecommendViewScreen extends StatefulWidget {
  static String routeName = '/recommendViewScreen';
  const RecommendViewScreen({Key? key}) : super(key: key);

  @override
  State<RecommendViewScreen> createState() => _RecommendViewScreenState();
}

class _RecommendViewScreenState extends State<RecommendViewScreen> {
  HomeController homeController = Get.find<HomeController>();
  @override
  void initState() {
    homeController.productsList();
    super.initState();
  }

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
                                        MediaQuery.of(context).size.width *
                                            0.05,
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
                          cursorHeight:
                              MediaQuery.of(context).size.width * 0.06,
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.04),
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
                    SizedBox(height: 20),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: GetBuilder(
                  builder: (HomeController controller) {
                    if (controller.isLoading) {
                      return const Center(child: CircularProgressIndicator());
                    }
                    return SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Column(
                          children: [
                            SizedBox(height: 10),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Recommend for you",
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
                                      onTap: () {},
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
                                                Text(
                                                  controller
                                                      .recommendedProductsList[
                                                          index]
                                                      .title,
                                                  style: TextStyle(
                                                      fontFamily: "latomedium",
                                                      fontSize:
                                                          MediaQuery.of(context)
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
                            SizedBox(height: 30),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
