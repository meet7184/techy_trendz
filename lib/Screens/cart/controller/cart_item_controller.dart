import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:techytrendz/Screens/cart/model/add_cart_item_model.dart';
import '../../../core/repository/user_repository.dart';

class CartItemController extends GetxController {
  final userRepo = GetIt.I.get<UserRepository>();

  bool isLoading = false;
  List<CartItemList> list = [];
  AddCartItemModel? addCartItemModel;

  Future<bool> cartItemDataList() async {
    try {
      isLoading = true;
      final response = await userRepo.cartItemList();
      list = response.items;
      print("--------------> ${list.length}");
      addCartItemModel = response;
      return true;
    } catch (e, stackTrace) {
      debugPrintStack(stackTrace: stackTrace);
      return false;
    } finally {
      isLoading = false;
      update();
    }
  }
}
