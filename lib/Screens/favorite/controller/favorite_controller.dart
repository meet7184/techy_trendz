import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:techytrendz/Screens/favorite/model/favorite_model.dart';
import 'package:techytrendz/Utils/global.dart';
import '../../../core/repository/user_repository.dart';

class FavoriteController extends GetxController {
  final userRepo = GetIt.I.get<UserRepository>();

  bool isLoading = false;
  List<WishListDataModel> wishList = [];

  Future<bool> getWishDataList() async {
    try {
      isLoading = true;
      final response =
          await userRepo.wishDataList(appController.userModel!.data.id);
      wishList = response.data;
      return true;
    } catch (e, stackTrace) {
      debugPrintStack(stackTrace: stackTrace);
      return false;
    } finally {
      isLoading = false;
      update();
    }
  }

  @override
  void onInit() {
    super.onInit();
  }
}
