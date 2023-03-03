import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import '../../Utils/ColorScheme.dart';
import '../../Utils/PageIndex.dart';
import '../../Utils/Responsive.dart';
import '../../core/utils/flitter_toast.dart';
import '../dashboar/MainScreen.dart';
import 'controller/drawer_data_controller.dart';
import 'products_detail_screen.dart';

class DrawerDataScreen extends StatefulWidget {
  static String routeName = '/viewAllScreen';
  const DrawerDataScreen({Key? key}) : super(key: key);

  @override
  State<DrawerDataScreen> createState() => _DrawerDataScreenState();
}

class _DrawerDataScreenState extends State<DrawerDataScreen> {
  TextEditingController textController = TextEditingController();
  DrawerDataController drawerDataController = Get.find<DrawerDataController>();

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
                          controller: textController,
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
                    const SizedBox(height: 20),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: GetBuilder(
                  builder: (DrawerDataController controller) {
                    if (controller.isLoading) {
                      return const Center(child: CircularProgressIndicator());
                    }
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: AlignedGridView.count(
                          crossAxisCount: 2,
                          crossAxisSpacing: 25,
                          mainAxisSpacing: 25,
                          shrinkWrap: true,
                          itemCount: controller.list.length,
                          itemBuilder: (context, index) {
                            return Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      spreadRadius: 2,
                                      blurRadius: 8,
                                      color: Colors.black.withOpacity(0.2),
                                    )
                                  ]),
                              child: InkWell(
                                onTap: () {
                                  Get.toNamed(ProductsDetailScreen.routeName,
                                      arguments: controller.list[index].id);
                                },
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(11),
                                      child: Container(
                                        height: 115,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius:
                                              BorderRadius.circular(11),
                                        ),
                                        child: Image.network(
                                            controller
                                                .list[index].images.first.src,
                                            fit: BoxFit.cover),
                                      ),
                                    ),
                                    const SizedBox(height: 15),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            controller.list[index].name,
                                            maxLines: 3,
                                            style: const TextStyle(
                                              overflow: TextOverflow.ellipsis,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          const SizedBox(height: 4),
                                          Row(
                                            children: [
                                              const Icon(
                                                Icons.star,
                                                color: Color(0xffFFA501),
                                                size: 15,
                                              ),
                                              const SizedBox(width: 4),
                                              Text(
                                                controller
                                                    .list[index].ratingCount
                                                    .toString(),
                                                style: const TextStyle(
                                                    color: Color(0xff7F8E9D),
                                                    fontSize: 12),
                                              ),
                                              const SizedBox(width: 5),
                                              const Text(
                                                "500 Sold",
                                                style: TextStyle(
                                                    color: Color(0xff7F8E9D),
                                                    fontSize: 12),
                                              )
                                            ],
                                          ),
                                          const SizedBox(height: 6),
                                          Text(
                                            "\$${controller.list[index].price}",
                                            style: const TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          const SizedBox(height: 5),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
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
