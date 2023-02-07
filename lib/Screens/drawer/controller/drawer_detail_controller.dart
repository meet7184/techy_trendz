import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:techytrendz/core/utils/flitter_toast.dart';
import '../../../Models/products_detail_list_model.dart';
import '../../../core/network/dio/dio_extension.dart';
import '../../../core/repository/user_repository.dart';
import '../model/drawer_products_detail_model.dart';

class DrawerDetailController extends GetxController {
  final userRepo = GetIt.I.get<UserRepository>();

  bool isLoading = false;
  ProductsDetailModel? productsDetailModel;
  Future<void> productsCategoryDetail(int productId) async {
    try {
      isLoading = true;
      final response = await userRepo.productsDetailData(productId);
      productsDetailModel = response;
    } catch (e, stackTrace) {
      debugPrintStack(stackTrace: stackTrace);
    } finally {
      isLoading = false;
      update();
    }
  }

  List<ProductList> productDetailCategoryList = [];

  Future<void> categoryProductList(int productId) async {
    try {
      final response = await userRepo.productList(productId);
      productDetailCategoryList = response.data;
      print("---------------> ${productDetailCategoryList.length}");
    } catch (e, stackTrace) {
      print("===========> ${e}");
      debugPrintStack(stackTrace: stackTrace);
    } finally {
      update();
    }
  }

  int quantityIndex = 0;
  Future<bool> addCartItemData() async {
    try {
      Get.context!.loaderOverlay.show();
      await userRepo.addCartItem(Get.arguments, quantityIndex);
      return true;
    } catch (e, stackTrace) {
      debugPrintStack(stackTrace: stackTrace);
      return false;
    } finally {
      Get.context!.loaderOverlay.hide();
      //isLoading = false;
      update();
    }
  }

  @override
  void onInit() {
    productsCategoryDetail(Get.arguments);
    categoryProductList(Get.arguments);
    super.onInit();
  }
}
