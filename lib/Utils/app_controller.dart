import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import '../Models/user_Model.dart';
import 'app_prefs.dart';

class AppController extends GetxController {
  UserModel? userModel;
  final appPref = GetIt.I.get<AppPrefs>();

  @override
  void onInit() {
    userModel = appPref.getUser;
    super.onInit();
  }
}
