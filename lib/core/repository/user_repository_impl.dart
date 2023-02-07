import 'package:get_it/get_it.dart';
import 'package:techytrendz/Models/banner_model.dart';
import 'package:techytrendz/Screens/cart/model/add_cart_item_model.dart';
import 'package:techytrendz/Screens/drawer/model/drawer_list_model.dart';
import 'package:techytrendz/Models/products_detail_list_model.dart';
import 'package:techytrendz/Screens/drawer/model/drawer_list_data_model.dart';
import 'package:techytrendz/Screens/favorite/model/favorite_model.dart';
import 'package:techytrendz/Screens/home/model/top_rated_products_model.dart';
import 'package:techytrendz/Screens/home/model/shop_by_category_model.dart';
import '../../Screens/drawer/model/drawer_products_detail_model.dart';
import '../../Models/user_Model.dart';
import '../../Screens/home/model/recommended_products_model.dart';
import '../network/api_client.dart';
import 'user_repository.dart';

class UserRepositoryImpl extends UserRepository {
  final repo = GetIt.I.get<ApiClient>();

  @override
  Future<void> singUpAccount(String name, String email, String password) async {
    return await repo.singUpAccount(name, email, password);
  }

  @override
  Future<void> singUpVerification(String email, String otp) async {
    return await repo.singUpVerification(email, otp);
  }

  @override
  Future<void> loginAccount(String email, String password) async {
    return await repo.loginAccount(email, password);
  }

  @override
  Future<UserModel> loginVerification(
      String email, String password, String code) async {
    return await repo.loginVerification(email, password, code);
  }

  @override
  Future<void> forgotPassword(String email) async {
    return await repo.forgotPassword(email);
  }

  @override
  Future<void> passwordVerificationOtp(String email, String code) async {
    return await repo.passwordVerificationOtp(email, code);
  }

  @override
  Future<void> resetPassword(String email, String code, String password) async {
    return await repo.resetPassword(email, code, password);
  }

  @override
  Future<RecommendedProductsModel> recommendedProducts() async {
    return await repo.recommendedProducts();
  }

  @override
  Future<ShopByCategoryModel> shopBycategory() async {
    return await repo.shopBycategory();
  }

  @override
  Future<TopRatedProductsModel> ratedProductsList() async {
    return await repo.ratedProductsList();
  }

  @override
  Future<BannerModel> bannerCategory() async {
    return await repo.bannerCategory();
  }

  @override
  Future<List<DrawerListModel>> drawerList() async {
    return await repo.drawerList();
  }

  @override
  Future<List<DrawerListDataModel>> drawerCategoryData(int categoryId) async {
    return await repo.drawerCategoryData(categoryId);
  }

  @override
  Future<ProductsDetailModel> productsDetailData(int productId) async {
    return await repo.productsDetailData(productId);
  }

  @override
  Future<ProductsDetailListModel> productList(int productId) async {
    return await repo.productList(productId);
  }

  @override
  Future<AddCartItemModel> addCartItem(int productId, int quantity) async {
    return await repo.addCartItem(productId, quantity);
  }

  @override
  Future<AddCartItemModel> cartItemList() async {
    return await repo.cartItemList();
  }

  @override
  Future<void> addWishList(String userid, int productid) async {
    return await repo.addWishList(userid, productid);
  }

  @override
  Future<void> deleteWishList(String userid, int productid) async {
    return await repo.deleteWishList(userid, productid);
  }

  @override
  Future<WishListModel> wishDataList(String userid) async {
    return await repo.wishDataList(userid);
  }
}
