import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:techytrendz/Utils/ColorScheme.dart';
import 'package:techytrendz/Utils/Responsive.dart';
import 'Screens/Introscreen.dart';
import 'util/app_controller.dart';
import 'util/app_prefs.dart';
import 'util/global.dart';
import 'Utils/localization_service.dart';
import 'util/route_generator.dart';
import 'core/network/api_client.dart';
import 'core/network/dio/dio_api_client.dart';
import 'core/repository/user_repository.dart';
import 'core/repository/user_repository_impl.dart';
import 'core/utils/app_bindings.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  GetIt.I.registerSingletonAsync(() => AppPrefs.getInstance());
  GetIt.I.registerSingletonAsync<ApiClient>(() => DioApiClient.getInstance());
  GetIt.I.registerSingletonWithDependencies<UserRepository>(
    () => UserRepositoryImpl(),
    dependsOn: [ApiClient],
  );
  await GetIt.I.allReady();
  Get.put(AppController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final localizationController = Get.put(LocalizationController());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(appTheame);
    return GlobalLoaderOverlay(
      useDefaultLoading: false,
      overlayColor: Colors.black54,
      overlayWidget: const Center(
        child: CircularProgressIndicator(
          strokeWidth: 4,
          color: Colors.blue,
        ),
      ),
      child: GetBuilder<LocalizationController>(
          init: localizationController,
          builder: (LocalizationController controller) {
            return GetMaterialApp(
              initialBinding: AppBindings(),
              debugShowCheckedModeBanner: false,
              title: 'Flutter Demo',
              theme: ThemeData(primarySwatch: Colors.grey),
              locale: controller.currentLanguage != ''
                  ? Locale(controller.currentLanguage, '')
                  : null,
              localeResolutionCallback:
                  LocalizationService.localeResolutionCallBack,
              supportedLocales: LocalizationService.supportedLocales,
              localizationsDelegates: LocalizationService.localizationsDelegate,
              initialRoute: getInitialRoute,
              getPages: routes,
            );
          }),
    );
  }
}

class SplashScreen extends StatefulWidget {
  static const String routeName = '/splashScreen';
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  NextPage() async {
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const OnBoardingScreen(),
        ),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    NextPage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/splashlogo.png',
                fit: BoxFit.fill,
                width: Responsive.width(60, context),
                height: Responsive.width(60, context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
