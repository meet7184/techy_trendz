import 'dart:ffi';

import 'package:techytrendz/Screens/cart/model/add_cart_item_model.dart';
import 'package:techytrendz/Screens/drawer/model/drawer_list_model.dart';
import 'package:techytrendz/Screens/home/model/top_rated_products_model.dart';
import 'package:techytrendz/Screens/home/model/shop_by_category_model.dart';

import '../../Models/banner_model.dart';
import '../../Screens/drawer/model/drawer_products_detail_model.dart';
import '../../Models/products_detail_list_model.dart';
import '../../Screens/drawer/model/drawer_list_data_model.dart';
import '../../Models/user_Model.dart';
import '../../Screens/favorite/model/favorite_model.dart';
import '../../Screens/home/model/recommended_products_model.dart';

abstract class ApiClient {
  Future<void> singUpAccount(String name, String email, String password);

  Future<void> singUpVerification(String email, String otp);

  Future<void> loginAccount(String email, String password);

  Future<UserModel> loginVerification(
      String email, String password, String code);

  Future<void> forgotPassword(String email);

  Future<void> passwordVerificationOtp(String email, String code);

  Future<void> resetPassword(String email, String code, String password);

  Future<RecommendedProductsModel> recommendedProducts();

  Future<ShopByCategoryModel> shopBycategory();

  Future<TopRatedProductsModel> ratedProductsList();

  Future<BannerModel> bannerCategory();

  Future<List<DrawerListModel>> drawerList();

  Future<List<DrawerListDataModel>> drawerCategoryData(int categoryId);

  Future<ProductsDetailModel> productsDetailData(int productId);

  Future<ProductsDetailListModel> productList(int productId);

  Future<AddCartItemModel> addCartItem(int productId, int quantity);

  Future<AddCartItemModel> cartItemList();

  Future<void> addWishList(String userid, int productid);

  Future<void> deleteWishList(String userid, int productid);

  Future<WishListModel> wishDataList(String userid);
}
