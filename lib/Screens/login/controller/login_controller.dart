import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:techytrendz/Utils/global.dart';
import '../../../../../../core/repository/user_repository.dart';
import '../../../Utils/app_prefs.dart';
import '../../../core/network/dio/dio_extension.dart';
import '../../../core/utils/flitter_toast.dart';
import '../../dashboar/MainScreen.dart';
import '../Loginscreen.dart';

class LoginController extends GetxController {
  final userRepo = GetIt.I.get<UserRepository>();
  TextEditingController emailIdController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Future<bool> login() async {
    try {
      Get.context!.loaderOverlay.show();
      await userRepo.loginAccount(
          emailIdController.text.trim(), passwordController.text.trim());
      return true;
    } catch (e) {
      final error = e as ApiError;
      showToast(error.message);
      return false;
    } finally {
      Get.context!.loaderOverlay.hide();
    }
  }

  Future<bool> loginVerificationAccount(String code) async {
    try {
      Get.context!.loaderOverlay.show();
      final response = await userRepo.loginVerification(
          emailIdController.text.trim(), passwordController.text.trim(), code);
      GetIt.I.get<AppPrefs>().setUser(response);
      print("======> $response");
      GetIt.I.get<AppPrefs>().setOnBoardingStatus = true;
      // final prefs = await SharedPreferences.getInstance();
      // if (response.userEmail != null) {
      //   Get.toNamed(MainScreen.routeName);
      //   showToast("Registration was Successfully");
      // } else {
      //   showToast("otp Wrong");
      // }
      return true;
    } catch (e, StackTrace) {
      print(e);
      debugPrintStack(stackTrace: StackTrace);
      return false;
    } finally {
      Get.context!.loaderOverlay.hide();
    }
  }
}
