import 'package:get/get_navigation/src/routes/get_route.dart';

import '../Screens/Introscreen.dart';
import '../Screens/dashboar/MainScreen.dart';
import '../Screens/drawer/products_detail_screen.dart';
import '../Screens/drawer/drawer_data_screen.dart';
import '../Screens/home/recommend_view_screen.dart';
import '../Screens/login/Loginscreen.dart';
import '../main.dart';

final List<GetPage<dynamic>> routes = [
  GetPage(name: SplashScreen.routeName, page: () => const SplashScreen()),
  GetPage(name: LoginScreen.routeName, page: () => const LoginScreen()),
  GetPage(name: MainScreen.routeName, page: () => const MainScreen()),
  GetPage(
      name: RecommendViewScreen.routeName,
      page: () => const RecommendViewScreen()),
  GetPage(
      name: DrawerDataScreen.routeName, page: () => const DrawerDataScreen()),
  GetPage(
      name: ProductsDetailScreen.routeName,
      page: () => const ProductsDetailScreen()),
  GetPage(
      name: OnBoardingScreen.routeName, page: () => const OnBoardingScreen()),
];
