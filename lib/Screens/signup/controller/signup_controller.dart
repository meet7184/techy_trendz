import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:loader_overlay/loader_overlay.dart';
import '../../../../core/repository/user_repository.dart';
import '../../../core/network/dio/dio_extension.dart';
import '../../../core/utils/flitter_toast.dart';

class SignUpController extends GetxController {
  final userRepo = GetIt.I.get<UserRepository>();

  TextEditingController emailController = TextEditingController();

  Future<bool> createAccount(String name, String password) async {
    try {
      Get.context!.loaderOverlay.show();
      await userRepo.singUpAccount(name, emailController.text.trim(), password);
      return true;
    } catch (e) {
      final error = e as ApiError;
      showToast(error.message);
      return false;
    } finally {
      Get.context!.loaderOverlay.hide();
    }
  }

  Future<bool> otpVerification(String otp) async {
    try {
      Get.context!.loaderOverlay.show();
      await userRepo.singUpVerification(emailController.text, otp);
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
