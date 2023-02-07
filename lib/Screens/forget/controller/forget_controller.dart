import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:loader_overlay/loader_overlay.dart';
import '../../../../../../core/repository/user_repository.dart';
import '../../../core/network/dio/dio_extension.dart';
import '../../../core/utils/flitter_toast.dart';

class ForgetPasswordController extends GetxController {
  final userRepo = GetIt.I.get<UserRepository>();

  TextEditingController forgetEmailIdController = TextEditingController();
  TextEditingController otpController = TextEditingController();

  Future<bool> forgotPassword() async {
    try {
      Get.context!.loaderOverlay.show();
      await userRepo.forgotPassword(forgetEmailIdController.text.trim());
      return true;
    } catch (e) {
      return false;
    } finally {
      Get.context!.loaderOverlay.hide();
    }
  }

  Future<bool> verificationCode() async {
    try {
      Get.context!.loaderOverlay.show();
      await userRepo.passwordVerificationOtp(
          forgetEmailIdController.text, otpController.text);
      return true;
    } catch (e) {
      print("=======>$e");
      return false;
    } finally {
      Get.context!.loaderOverlay.hide();
    }
  }

  Future<bool> resetPassword(String password) async {
    try {
      Get.context!.loaderOverlay.show();
      await userRepo.resetPassword(
          forgetEmailIdController.text, otpController.text, password);
      return true;
    } catch (e) {
      final error = e as ApiError;
      showToast(error.message);
      return false;
    } finally {
      Get.context!.loaderOverlay.hide();
    }
  }
}
