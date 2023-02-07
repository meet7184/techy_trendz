import 'package:get/get.dart';
import 'package:techytrendz/Screens/favorite/controller/favorite_controller.dart';
import 'package:techytrendz/Screens/home/controller/home_controller.dart';
import 'package:techytrendz/Screens/drawer/drawer_data_screen.dart';
import 'package:techytrendz/Utils/app_controller.dart';
import '../../Screens/cart/controller/cart_item_controller.dart';
import '../../Screens/forget/controller/forget_controller.dart';
import '../../Screens/drawer/controller/drawer_data_controller.dart';
import '../../Screens/drawer/controller/drawer_detail_controller.dart';
import '../../Screens/login/controller/login_controller.dart';
import '../../Screens/signup/controller/signup_controller.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AppController>(() => AppController(), fenix: true);
    Get.lazyPut<SignUpController>(() => SignUpController(), fenix: true);
    Get.lazyPut<LoginController>(() => LoginController(), fenix: true);
    Get.lazyPut<HomeController>(() => HomeController(), fenix: true);
    Get.lazyPut<CartItemController>(() => CartItemController(), fenix: true);
    Get.lazyPut<DrawerDataController>(() => DrawerDataController(),
        fenix: true);
    Get.lazyPut<DrawerDetailController>(() => DrawerDetailController(),
        fenix: true);
    Get.lazyPut<ForgetPasswordController>(() => ForgetPasswordController(),
        fenix: true);
    Get.lazyPut<FavoriteController>(() => FavoriteController(), fenix: true);
  }
}
