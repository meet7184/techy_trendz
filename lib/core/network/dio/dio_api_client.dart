import 'dart:convert';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:techytrendz/Models/banner_model.dart';
import 'package:techytrendz/Screens/drawer/model/drawer_list_model.dart';
import 'package:techytrendz/Models/products_detail_list_model.dart';
import 'package:techytrendz/Screens/drawer/model/drawer_list_data_model.dart';
import 'package:techytrendz/Screens/favorite/model/favorite_model.dart';
import 'package:techytrendz/Screens/home/model/top_rated_products_model.dart';
import 'package:techytrendz/Screens/home/model/recommended_products_model.dart';
import 'package:techytrendz/Screens/home/model/shop_by_category_model.dart';
import 'package:techytrendz/Utils/global.dart';
import 'package:techytrendz/core/network/dio/dio_extension.dart';
import '../../../Screens/cart/model/add_cart_item_model.dart';
import '../../../Screens/drawer/model/drawer_products_detail_model.dart';
import '../../../Models/user_Model.dart';
import '../../utils/base_url.dart';
import '../../utils/base_util.dart';
import '../api_client.dart';

class DioApiClient extends ApiClient {
  static late DioApiClient _service;

  static Dio? _dio;

  static Dio get _dioClient => _dio!;

  DioApiClient._();

  static Future<DioApiClient> getInstance() async {
    if (_dio == null) {
      _dio = _init();
      _service = DioApiClient._();
    }
    return _service;
  }

  static Dio _init() {
    final dio = Dio();
    dio.options.baseUrl = BaseUrl.baseUrl;

    dio.options.connectTimeout = TimeOut.connectTimeout.inMilliseconds;
    dio.options.receiveTimeout = TimeOut.connectTimeout.inMilliseconds;

    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          if (appController.userModel != null) {
            String username = appController.userModel!.data.userEmail;
            String password = appController.userModel!.userPassword;
            String basicAuth =
                "Basic " + base64Encode(utf8.encode('$username:$password'));
            options.headers.putIfAbsent("Authorization", () => basicAuth);
            log("Authorization ===> $basicAuth");
          }
          // options.headers.putIfAbsent("Cookie", () => "woosw_key=MMKSYD");
          if (kDebugMode) {
            if (options.data is FormData) {
              FormData d = options.data;
              d.fields.forEach(((field) =>
                  debugPrint('Fields: ${field.key}: ${field.value}')));
              d.files.forEach(((field) => debugPrint(
                  'Files: ${field.key}: ${field.value.filename} (${field.value.contentType?.mimeType})')));
            }
          }
          return handler.next(options);
        },
      ),
    );

    dio.interceptors.add(LogInterceptor(
      requestBody: kDebugMode,
      request: kDebugMode,
      requestHeader: kDebugMode,
      responseBody: kDebugMode,
    ));
    return dio;
  }

  @override
  Future<void> singUpAccount(String name, String email, String password) async {
    final param = {
      "username": name,
      "email": email,
      "password": password,
    };
    await _dioClient.postApi(UrlPath.signUp, data: param);
  }

  @override
  Future<void> singUpVerification(String email, String otp) async {
    final param = {
      "email": email,
      "registration_otp": otp,
    };
    await _dioClient.postApi(UrlPath.signUpVerification, data: param);
  }

  @override
  Future<void> loginAccount(String email, String password) async {
    final param = {
      "email": email,
      "password": password,
    };
    await _dioClient.postApi(UrlPath.login, data: param);
  }

  @override
  Future<UserModel> loginVerification(
      String email, String password, String code) async {
    final param = {
      "email": email,
      "password": password,
      "verification_code": code
    };
    final response =
        await _dioClient.postApi(UrlPath.loginVerification, data: param);
    return UserModel.fromJson(response);
  }

  @override
  Future<void> forgotPassword(String email) async {
    final param = {
      "email": email,
    };
    await _dioClient.post(UrlPath.forgotPassword, data: param);
  }

  @override
  Future<void> passwordVerificationOtp(String email, String code) async {
    final param = {
      "email": email,
      "code": code,
    };
    await _dioClient.post(UrlPath.passwordVerificationOtp, data: param);
  }

  @override
  Future<void> resetPassword(String email, String code, String password) async {
    final param = {
      "email": email,
      "code": code,
      "password": password,
    };
    await _dioClient.post(UrlPath.resetPassword, data: param);
  }

  @override
  Future<RecommendedProductsModel> recommendedProducts() async {
    final response = await _dioClient.post(UrlPath.recommendedProducts);
    return RecommendedProductsModel.fromJson(response.data);
  }

  @override
  Future<ShopByCategoryModel> shopBycategory() async {
    final response = await _dioClient.post(UrlPath.shopBycategory);
    return ShopByCategoryModel.fromJson(response.data);
  }

  @override
  Future<TopRatedProductsModel> ratedProductsList() async {
    final response = await _dioClient.post(UrlPath.topRatedProducts);
    return TopRatedProductsModel.fromJson(response.data);
  }

  @override
  Future<BannerModel> bannerCategory() async {
    final response = await _dioClient.post(UrlPath.categoryBannerList);
    print("==============> ${response.data}");
    return BannerModel.fromJson(response.data);
  }

  @override
  Future<List<DrawerListModel>> drawerList() async {
    final response = await _dioClient.post(UrlPath.drawerList);
    return List<DrawerListModel>.from(
      response.data.map(
        (e) => DrawerListModel.fromJson(e),
      ),
    );
  }

  @override
  Future<List<DrawerListDataModel>> drawerCategoryData(int categoryId) async {
    _dioClient.options.headers = {
      "Authorization":
          'Basic Y2tfNGZlNTljY2E0ZTNjMzljZjExZDMxYTJmM2U4NjIyZTBjODcyOTY0MDpjc19iMDQxYjYxMjY4MTdkMmRlODUzMTg1YWNiZjA2NzdmN2RjODU5NTY1',
    };
    print("=======> ${_dioClient.options.headers}");
    final response = await _dioClient.get(UrlPath.drawerProductListData,
        queryParameters: {"category": categoryId});
    _dioClient.options.headers.remove("Authorization");
    return List<DrawerListDataModel>.from(
      response.data.map(
        (e) => DrawerListDataModel.fromJson(e),
      ),
    );
  }

  @override
  Future<ProductsDetailModel> productsDetailData(int productId) async {
    _dioClient.options.headers = {
      "Authorization":
          'Basic Y2tfNGZlNTljY2E0ZTNjMzljZjExZDMxYTJmM2U4NjIyZTBjODcyOTY0MDpjc19iMDQxYjYxMjY4MTdkMmRlODUzMTg1YWNiZjA2NzdmN2RjODU5NTY1',
    };
    final response = await _dioClient
        .get(UrlPath.productCategoryDetail + productId.toString());
    _dioClient.options.headers.remove("Authorization");
    return ProductsDetailModel.fromJson(response.data);
  }

  @override
  Future<ProductsDetailListModel> productList(int productId) async {
    final param = {
      "product_id": productId,
    };
    final response = await _dioClient.post(UrlPath.productList, data: param);
    return ProductsDetailListModel.fromJson(response.data);
  }

  @override
  Future<AddCartItemModel> addCartItem(int productId, int quantity) async {
    final param = {"id": productId, "quantity": quantity};
    _dioClient.options.headers = {
      "Username": appController.userModel!.data.userEmail,
      "Password": appController.userModel!.userPassword
    };
    final response =
        await _dioClient.post(UrlPath.addCartItem, queryParameters: param);
    _dioClient.options.headers.remove("Username");
    _dioClient.options.headers.remove("Password");
    return AddCartItemModel.fromJson(response.data);
  }

  @override
  Future<AddCartItemModel> cartItemList() async {
    _dioClient.options.headers = {
      "Username": appController.userModel!.data.userEmail,
      "Password": appController.userModel!.userPassword
    };
    final response = await _dioClient.get(UrlPath.cartItemList);
    _dioClient.options.headers.remove("Username");
    _dioClient.options.headers.remove("Password");
    return AddCartItemModel.fromJson(response.data);
  }

  @override
  Future<void> addWishList(String userid, int productid) async {
    final param = {"userid": userid, "productid": productid};
    final response =
        await _dioClient.post(UrlPath.addWishList, queryParameters: param);
  }

  @override
  Future<void> deleteWishList(String userid, int productid) async {
    final param = {"userid": userid, "productid": productid};
    final response =
        await _dioClient.post(UrlPath.deleteWishList, queryParameters: param);
  }

  @override
  Future<WishListModel> wishDataList(String userid) async {
    final param = {"userid": userid};
    final response =
        await _dioClient.post(UrlPath.wishDataList, queryParameters: param);
    return WishListModel.fromJson(response.data);
  }
}
