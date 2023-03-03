import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:techytrendz/Screens/login/Loginscreen.dart';
import '../Screens/Introscreen.dart';
import '../Screens/dashboar/MainScreen.dart';
import 'app_controller.dart';
import 'app_prefs.dart';

AppController appController = Get.find<AppController>();

String get getInitialRoute {
  if (GetIt.I.get<AppPrefs>().onBoardingStatus) {
    if (appController.userModel != null) {
      print("User Model ======> ${appController.userModel}");
      return MainScreen.routeName;
    } else {
      return LoginScreen.routeName;
    }
  } else {
    return OnBoardingScreen.routeName;
  }
}
