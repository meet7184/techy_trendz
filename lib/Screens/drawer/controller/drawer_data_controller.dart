import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import '../model/drawer_list_data_model.dart';
import '../../../core/repository/user_repository.dart';

class DrawerDataController extends GetxController {
  final userRepo = GetIt.I.get<UserRepository>();

  List<DrawerListDataModel> list = [];
  bool isLoading = false;

  Future<bool> getCategoryData(int categoryId) async {
    try {
      isLoading = true;
      final response = await userRepo.drawerCategoryData(categoryId);
      list = response;
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
    getCategoryData(Get.arguments);
    super.onInit();
  }
}
