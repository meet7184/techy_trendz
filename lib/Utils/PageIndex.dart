import 'package:flutter/material.dart';
import 'package:techytrendz/Screens/setting/about_us_screen.dart';
import 'package:techytrendz/Screens/Aboutus_Screen.dart';
import 'package:techytrendz/Screens/setting/AccountDetail.dart';
import 'package:techytrendz/Screens/setting/addresses/add_address_screen.dart';
import 'package:techytrendz/Screens/setting/change_language_screen.dart';
import 'package:techytrendz/Screens/setting/contact_us/contact_submit_screen.dart';
import 'package:techytrendz/Screens/setting/contact_us/contact_us_screen.dart';
import 'package:techytrendz/Screens/profile/edit_profile.dart';
import 'package:techytrendz/Screens/setting/FaqScreen.dart';
import 'package:techytrendz/Screens/profile/MyAccountScreen.dart';
import 'package:techytrendz/Screens/ProductListing.dart';
import 'package:techytrendz/Screens/cart/Shippingaddress.dart';
import 'package:techytrendz/Screens/ShopScreen.dart';
import 'package:techytrendz/Screens/favorite/favorite_screen.dart';
import 'package:techytrendz/Screens/setting/payment_shipping_return.dart';
import 'package:techytrendz/Screens/setting/wholesale_screen.dart';
import '../Screens/setting/addresses/AddressScreen.dart';
import '../Screens/cart/CartScreen.dart';
import '../Screens/home/HomeScreen.dart';
import '../Screens/setting/Ordersscreen.dart';
import '../Screens/Subscripation.dart';

class PageIndex {
  static int currentpageindex = 0;
  static String contactsucessscrenname = "";
  static bool drawerfirst = true;

  static setbottompage(int index, GlobalKey<ScaffoldState> scaffoldkey) {
    switch (index) {
      case 0:
        return HomeScreen(scaffoldkey);
      case 1:
        return FavoriteScreen(scaffoldkey);
      case 2:
        return CartScreen(scaffoldkey);
      // return SafeArea(child: Text("cart"));
      case 3:
        return MyAccountScreen(scaffoldkey);
      case 4:
        return ShopScreen(scaffoldkey);
      // case 5:
      //   return ProductDetailScreen(scaffoldkey);
      case 6:
        return AboutUsScreen(scaffoldkey);
      case 7:
        return ContactUsScreen(scaffoldkey);
      case 8:
        return Shippingaddress(scaffoldkey);
      case 10:
        return FavoriteScreen(scaffoldkey);
      // case 11:
      //   return RecommendViewScreen(scaffoldkey);
      case 12:
        return ProductListing(scaffoldkey);
      case 13:
        return OrderScreen(scaffoldkey);
      case 14:
        return SubscriptionScreen(scaffoldkey);
      case 15:
        return EditProfileScreen(scaffoldkey);
      case 16:
        return AddressScreen(scaffoldkey);
      case 17:
        return AddAddressScreen(scaffoldkey);
      case 18:
        return AccountDetail(scaffoldkey);
      case 19:
        return PaymentShippingreturn(scaffoldkey);
      case 20:
        return AboutusScreen(scaffoldkey);
      case 21:
        return WholesaleScreen(scaffoldkey);
      case 22:
        return FaqScreen(scaffoldkey);
      case 23:
        return ContactSuccessScreen(scaffoldkey);
      case 24:
        return ChangeLanguageScreen(scaffoldkey);
    }
  }
}
