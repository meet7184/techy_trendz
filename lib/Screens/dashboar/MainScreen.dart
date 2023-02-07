import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:techytrendz/Screens/drawer/drawer_data_screen.dart';
import '../../Utils/ColorScheme.dart';
import '../../Utils/PageIndex.dart';
import '../home/controller/home_controller.dart';

class MainScreen extends StatefulWidget {
  static const String routeName = '/mainScreen';
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey();

  void _onItemTapped(int index) {
    setState(() {
      PageIndex.currentpageindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      drawer: Drawer(
        child: SafeArea(
          child: Container(
            width: 267,
            color: appTheame,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/logoicon.png",
                        height: 60,
                        width: 60,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        "Techy Trendz",
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.05,
                          color: Colors.white,
                          fontFamily: "latoregular",
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  height: 45,
                  width: double.infinity,
                  color: Colors.black,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18, top: 10),
                    child: Text(
                      "CATEGORIES",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                const SizedBox(height: 10),
                Expanded(
                  child: GetBuilder(
                    builder: (HomeController controller) {
                      if (controller.isLoading) {
                        return const Center(child: CircularProgressIndicator());
                      }
                      return SingleChildScrollView(
                        child: Column(
                          children: [
                            ...controller.drawerList
                                .asMap()
                                .map((index, value) => MapEntry(
                                      index,
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 15, vertical: 3),
                                        child: Column(
                                          children: [
                                            GestureDetector(
                                              onTap: () {
                                                Get.toNamed(
                                                    DrawerDataScreen.routeName,
                                                    arguments: int.parse(
                                                        value.objectId));
                                                print(
                                                    "======> ${value.objectId}");
                                              },
                                              child: Row(
                                                children: [
                                                  Container(
                                                    height: 35,
                                                    width: 35,
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              4),
                                                      child: Image.network(
                                                          value.preview,
                                                          fit: BoxFit.fill),
                                                    ),
                                                  ),
                                                  SizedBox(width: 10),
                                                  Expanded(
                                                    child: Text(
                                                      value.title,
                                                      maxLines: 1,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: TextStyle(
                                                          overflow:
                                                              TextOverflow.clip,
                                                          fontSize: 20,
                                                          color: Colors.white),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(height: 3),
                                            Divider(
                                                thickness: 1,
                                                color: Colors.white),
                                          ],
                                        ),
                                      ),
                                    ))
                                .values
                                .toList(),
                          ],
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body: PageIndex.setbottompage(PageIndex.currentpageindex, _scaffoldkey),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedLabelStyle: TextStyle(color: appTheame, fontSize: 15),
        unselectedLabelStyle:
            const TextStyle(color: Colors.black, fontSize: 15),
        iconSize: 30,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              PageIndex.currentpageindex == 0 ||
                      PageIndex.currentpageindex == 11 ||
                      PageIndex.currentpageindex == 12 ||
                      PageIndex.currentpageindex == 5
                  ? Icons.home
                  : Icons.home_outlined,
              color: PageIndex.currentpageindex == 0 ||
                      PageIndex.currentpageindex == 11 ||
                      PageIndex.currentpageindex == 12 ||
                      PageIndex.currentpageindex == 5
                  ? appTheame
                  : Colors.black,
            ),
            label: 'HOME',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              PageIndex.currentpageindex == 1
                  ? Icons.favorite
                  : Icons.favorite_border,
              color: PageIndex.currentpageindex == 1 ? appTheame : Colors.black,
            ),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              PageIndex.currentpageindex == 2 || PageIndex.currentpageindex == 8
                  ? Icons.shopping_cart_rounded
                  : Icons.shopping_cart_outlined,
              color: PageIndex.currentpageindex == 2 ||
                      PageIndex.currentpageindex == 8
                  ? appTheame
                  : Colors.black,
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              PageIndex.currentpageindex == 3 ||
                      PageIndex.currentpageindex == 7 ||
                      PageIndex.currentpageindex == 13 ||
                      PageIndex.currentpageindex == 14 ||
                      PageIndex.currentpageindex == 15 ||
                      PageIndex.currentpageindex == 16 ||
                      PageIndex.currentpageindex == 17 ||
                      PageIndex.currentpageindex == 18 ||
                      PageIndex.currentpageindex == 19 ||
                      PageIndex.currentpageindex == 20 ||
                      PageIndex.currentpageindex == 21 ||
                      PageIndex.currentpageindex == 22 ||
                      PageIndex.currentpageindex == 23 ||
                      PageIndex.currentpageindex == 24
                  ? Icons.person
                  : Icons.person_outline,
              color: PageIndex.currentpageindex == 3 ||
                      PageIndex.currentpageindex == 7 ||
                      PageIndex.currentpageindex == 13 ||
                      PageIndex.currentpageindex == 14 ||
                      PageIndex.currentpageindex == 15 ||
                      PageIndex.currentpageindex == 16 ||
                      PageIndex.currentpageindex == 17 ||
                      PageIndex.currentpageindex == 18 ||
                      PageIndex.currentpageindex == 19 ||
                      PageIndex.currentpageindex == 20 ||
                      PageIndex.currentpageindex == 21 ||
                      PageIndex.currentpageindex == 22 ||
                      PageIndex.currentpageindex == 23 ||
                      PageIndex.currentpageindex == 24
                  ? appTheame
                  : Colors.black,
            ),
            label: 'Account',
          ),
        ],
        currentIndex: PageIndex.currentpageindex == 11 ||
                PageIndex.currentpageindex == 12 ||
                PageIndex.currentpageindex == 5
            ? 0
            : PageIndex.currentpageindex == 8
                ? 2
                : PageIndex.currentpageindex == 7 ||
                        PageIndex.currentpageindex == 13 ||
                        PageIndex.currentpageindex == 15 ||
                        PageIndex.currentpageindex == 14 ||
                        PageIndex.currentpageindex == 16 ||
                        PageIndex.currentpageindex == 17 ||
                        PageIndex.currentpageindex == 18 ||
                        PageIndex.currentpageindex == 19 ||
                        PageIndex.currentpageindex == 20 ||
                        PageIndex.currentpageindex == 21 ||
                        PageIndex.currentpageindex == 22 ||
                        PageIndex.currentpageindex == 23 ||
                        PageIndex.currentpageindex == 24
                    ? 3
                    : PageIndex.currentpageindex,
        selectedItemColor: appTheame,
        onTap: _onItemTapped,
      ),
    );
  }
}
