class BaseUrl {
  static String baseUrl = "https://techytrendz.com/wp-json/";
}

class UrlPath {
  static const signUp = "api/users/register";
  static const signUpVerification = "api/users/register-verify";
  static const login = "api/users/login";
  static const loginVerification = "api/users/login-verify";
  static const forgotPassword = "bdpwr/v1/reset-password";
  static const passwordVerificationOtp = "bdpwr/v1/validate-code";
  static const resetPassword = "bdpwr/v1/set-password";
  static const recommendedProducts = "api/v1/recommended-products";
  static const shopBycategory = "api/v1/homepage-shopBycategory";
  static const topRatedProducts = "api/v1/topRated-products";
  static const categoryBannerList = "api/v1/homepage-category-list";
  static const drawerList = "api/v1/mobile-category-menu";
  static const drawerProductListData = "wc/v3/products";
  static const productCategoryDetail = "wc/v3/products/";
  static const productList = "api/v1/related-products";
  static const addCartItem = "cocart/v2/cart/add-item";
  static const cartItemList = "cocart/v2/cart";
  static const addWishList = "api/v1/add_wishlist";
  static const deleteWishList = "api/v1/delete_wishlist";
  static const wishDataList = "api/v1/get_wishlist";
}
