import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:techytrendz/Screens/home/controller/home_controller.dart';

class CarouselWithIndicator extends StatefulWidget {
  //final List<BannerModel> bannerList;
  const CarouselWithIndicator({Key? key}) : super(key: key);

  @override
  State<CarouselWithIndicator> createState() => _CarouselWithIndicatorState();
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicator> {
  int _current = 0;
  CarouselController carouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      builder: (HomeController controller) {
        return Column(
          children: [
            CarouselSlider(
              carouselController: carouselController,
              items: controller.bannerList
                  .asMap()
                  .map((index, value) => MapEntry(
                      index,
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: double.infinity,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            //borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              image: NetworkImage(value.image),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                child: Text(
                                  value.title,
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                              ),
                              SizedBox(height: 15),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 2,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    value.categoryText,
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      )))
                  .values
                  .toList(),
              options: CarouselOptions(
                height: 170,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                },
                viewportFraction: 1,
                initialPage: 1,
                enlargeCenterPage: true,
                autoPlay: true,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: controller.bannerList.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () => carouselController.animateToPage(entry.key),
                  child: Container(
                    width: 13,
                    height: 13,
                    margin:
                        EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: _current == entry.key
                          ? Colors.black
                          : Color(0xffD9D9D9),
                    ),
                  ),
                );
              }).toList(),
            ),
          ],
        );
      },
    );
  }
}

// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
//
// class CarouselWithIndicator extends StatefulWidget {
//   const CarouselWithIndicator({Key? key}) : super(key: key);
//
//   @override
//   State<CarouselWithIndicator> createState() => _CarouselWithIndicatorState();
// }
//
// class _CarouselWithIndicatorState extends State<CarouselWithIndicator> {
//   int _current = 0;
//   CarouselController carouselController = CarouselController();
//
//   List<String> imgList = [
//     "assets/profile.png",
//     "assets/profile.png",
//     "assets/profile.png",
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         CarouselSlider(
//           carouselController: carouselController,
//           items: imgList
//               .asMap()
//               .map((index, value) => MapEntry(
//                   index,
//                   GestureDetector(
//                     onTap: () {},
//                     child: Container(
//                       height: double.infinity,
//                       width: double.infinity,
//                       decoration: BoxDecoration(
//                         color: Colors.grey,
//                         //borderRadius: BorderRadius.circular(8.0),
//                         image: DecorationImage(
//                           image: AssetImage(value),
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Center(
//                             child: Text(
//                               "Exciting bonus for\n new users",
//                               textAlign: TextAlign.center,
//                               style: TextStyle(
//                                   fontSize: 24,
//                                   fontWeight: FontWeight.w600,
//                                   color: Colors.white),
//                             ),
//                           ),
//                           SizedBox(height: 15),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Container(
//                                 height: 2,
//                                 width: 35,
//                                 decoration: BoxDecoration(
//                                   color: Colors.white,
//                                   borderRadius: BorderRadius.circular(10),
//                                 ),
//                               ),
//                               SizedBox(width: 10),
//                               Text(
//                                 "Cashback up to 50%",
//                                 style: TextStyle(
//                                     fontSize: 15,
//                                     fontWeight: FontWeight.w600,
//                                     color: Colors.white),
//                               ),
//                             ],
//                           )
//                         ],
//                       ),
//                     ),
//                   )))
//               .values
//               .toList(),
//           options: CarouselOptions(
//             height: 170,
//             onPageChanged: (index, reason) {
//               setState(() {
//                 _current = index;
//               });
//             },
//             viewportFraction: 1,
//             initialPage: 1,
//             enlargeCenterPage: true,
//             autoPlay: true,
//           ),
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: imgList.asMap().entries.map((entry) {
//             return GestureDetector(
//               onTap: () => carouselController.animateToPage(entry.key),
//               child: Container(
//                 width: 13,
//                 height: 13,
//                 margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                   color:
//                       _current == entry.key ? Colors.black : Color(0xffD9D9D9),
//                 ),
//               ),
//             );
//           }).toList(),
//         ),
//       ],
//     );
//   }
// }
