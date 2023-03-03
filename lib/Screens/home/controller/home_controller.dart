import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:techytrendz/Models/banner_model.dart';
import 'package:techytrendz/Screens/home/model/top_rated_products_model.dart';
import 'package:techytrendz/Screens/home/model/shop_by_category_model.dart';
import 'package:techytrendz/util/global.dart';
import '../../drawer/controller/drawer_data_controller.dart';
import '../../drawer/model/drawer_list_model.dart';
import '../../../core/repository/user_repository.dart';
import '../model/recommended_products_model.dart';

class HomeController extends GetxController {
  final userRepo = GetIt.I.get<UserRepository>();

  bool isLoading = false;

  List<ShopByCategoryList> shopByCategoryList = [];
  Future<void> shopCategory() async {
    try {
      isLoading = true;
      final response = await userRepo.shopBycategory();
      shopByCategoryList = response.data;
    } catch (e, stackTrace) {
      debugPrintStack(stackTrace: stackTrace);
      print("=>$e");
    } finally {
      isLoading = false;
      update();
    }
  }

  List<RecommendedList> recommendedProductsList = [];
  Future<void> productsList() async {
    try {
      isLoading = true;
      final response = await userRepo.recommendedProducts();
      recommendedProductsList = response.data;
    } catch (e, stackTrace) {
      print("=>$e");
      debugPrintStack(stackTrace: stackTrace);
    } finally {
      isLoading = false;
      update();
    }
  }

  List<TopRatedProductsList> ratedProductsList = [];
  Future<void> ratedProductsData() async {
    try {
      isLoading = true;
      final response = await userRepo.ratedProductsList();
      ratedProductsList = response.data;
    } catch (e, stackTrace) {
      debugPrintStack(stackTrace: stackTrace);
      print("=>$e");
    } finally {
      isLoading = false;
      update();
    }
  }

  List<BannerList> bannerList = [];
  Future<void> getBannerList() async {
    try {
      isLoading = true;
      final response = await userRepo.bannerCategory();
      bannerList = response.list;
    } catch (e, stackTrace) {
      debugPrintStack(stackTrace: stackTrace);
      print("=>$e");
    } finally {
      isLoading = false;
      update();
    }
  }

  List<DrawerListModel> drawerList = [];

  Future<void> drawerCategory() async {
    try {
      isLoading = true;
      final response = await userRepo.drawerList();
      drawerList = response;
    } catch (e, stackTrace) {
      debugPrintStack(stackTrace: stackTrace);
    } finally {
      isLoading = false;
      update();
    }
  }

  Future<bool> wishList(String userid, int productid) async {
    try {
      isLoading = true;
      final response = await userRepo.addWishList(userid, productid);
      return true;
    } catch (e, stackTrace) {
      debugPrintStack(stackTrace: stackTrace);
      return false;
    } finally {
      isLoading = false;
      update();
    }
  }

  Future<void> removeWishList(String userid, int productid) async {
    try {
      isLoading = true;
      final response = await userRepo.deleteWishList(userid, productid);
    } catch (e, stackTrace) {
      debugPrintStack(stackTrace: stackTrace);
    } finally {
      isLoading = false;
      update();
    }
  }

  @override
  void onInit() {
    shopCategory();
    productsList();
    getBannerList();
    ratedProductsData();
    drawerCategory();
    super.onInit();
  }
}
