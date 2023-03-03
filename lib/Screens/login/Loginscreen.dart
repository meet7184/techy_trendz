import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:techytrendz/Screens/login/controller/login_controller.dart';
import '../../Utils/ColorScheme.dart';
import '../../Utils/Responsive.dart';
import '../../Utils/localization_service.dart';
import '../../Utils/t_key.dart';
import '../../core/utils/flitter_toast.dart';
import '../../widget/common_submit_button.dart';
import '../../widget/textFied.dart';
import '../dashboar/MainScreen.dart';
import '../signup/SignupScreen.dart';
import '../forget/forgotpassword.dart';
import 'login_verification_screen.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = '/loginScreen';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

final localizationController = Get.find<LocalizationController>();

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool hidePassword = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        disposeKeyboard();
      },
      child: Scaffold(
        backgroundColor: appTheame,
        body: Form(
          key: formKey,
          child: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.09),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(
                            MediaQuery.of(context).size.width * 0.09),
                        topLeft: Radius.circular(
                            MediaQuery.of(context).size.width * 0.09),
                      )),
                  child: GetBuilder(
                    builder: (LoginController controller) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: Responsive.height(3, context)),
                          Text(
                            TKeys.welcomeback.translate(context),
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.065,
                                fontFamily: "intersemibold"),
                          ),
                          SizedBox(height: Responsive.height(1, context)),
                          Text(
                            TKeys.login_title.translate(context),
                            style: TextStyle(
                                color: Colors.black45,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.04,
                                fontFamily: "interregular"),
                          ),
                          SizedBox(
                            height: Responsive.height(3, context),
                          ),
                          Center(
                            child: Image.asset(
                              'assets/logo.png',
                              height: Responsive.width(30, context),
                              fit: BoxFit.fill,
                            ),
                          ),
                          SizedBox(
                            height: Responsive.height(3, context),
                          ),
                          Text(
                            TKeys.email_phone.translate(context),
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.047,
                                fontFamily: "intermedium"),
                          ),
                          SizedBox(
                            height: Responsive.height(1, context),
                          ),
                          CustomTextField2(
                            validator: (val) =>
                                val!.trim().isEmpty ? "field required" : null,
                            textFieldType: TextFieldType.loginEmailID,
                            textEditingController: controller.emailIdController,
                            suffixIcon: Icon(
                              Icons.check_circle_rounded,
                              color: Color(0xff0188CC),
                              size: 20,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            TKeys.password.translate(context),
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.048,
                                fontFamily: "intermedium"),
                          ),
                          SizedBox(height: 10),
                          CustomTextField2(
                            validator: (val) =>
                                val!.trim().isEmpty ? "field required" : null,
                            textFieldType: TextFieldType.emailPassword,
                            textEditingController:
                                controller.passwordController,
                            obscureText: hidePassword,
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  hidePassword = !hidePassword;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 20,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: const Color(0xff0188CC)),
                                    color: Colors.blue.shade100,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Center(
                                      child: Text(
                                    "View",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 13),
                                  )),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const ForgotPasswordScreen(),
                                ),
                              );
                            },
                            child: Align(
                              alignment: Alignment.topRight,
                              child: Text(
                                TKeys.forgotpassword.translate(context),
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.045,
                                  fontFamily: "intersemibold",
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: Responsive.height(2, context),
                          ),
                          CommonSubmitButton(
                            text: 'Sign in',
                            onTap: () async {
                              disposeKeyboard();
                              if (formKey.currentState!.validate()) {
                                formKey.currentState!.save();
                                disposeKeyboard();
                                final response = await controller.login();
                                if (response) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const LoginVerificationScreen(),
                                    ),
                                  );
                                  showToast(
                                      "OTP sent on your register email address");
                                }
                              }
                            },
                          ),
                          SizedBox(
                            height: Responsive.height(2, context),
                          ),
                          Center(
                            child: Text(
                              TKeys.youcan_connect_with.translate(context),
                              style: TextStyle(
                                  color: Colors.black45,
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.045,
                                  fontFamily: "interregular"),
                            ),
                          ),
                          SizedBox(
                            height: Responsive.height(2, context),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {
                                  localizationController.toggleLanguage();
                                },
                                child: Container(
                                  decoration: BoxDecoration(boxShadow: [
                                    BoxShadow(
                                      spreadRadius: 3,
                                      blurRadius: 8,
                                      color: Colors.black.withOpacity(0.3),
                                    )
                                  ], shape: BoxShape.circle),
                                  child: Image.asset(
                                    'assets/google.png',
                                    fit: BoxFit.fill,
                                    width: Responsive.width(15, context),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: Responsive.width(2, context),
                              ),
                              Container(
                                decoration: BoxDecoration(boxShadow: [
                                  BoxShadow(
                                    spreadRadius: 3,
                                    blurRadius: 8,
                                    color: Colors.black.withOpacity(0.3),
                                  ),
                                ], shape: BoxShape.circle),
                                child: Image.asset(
                                  'assets/facebook.png',
                                  fit: BoxFit.fill,
                                  width: Responsive.width(15, context),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Center(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const MainScreen(),
                                  ),
                                );
                              },
                              child: Container(
                                height: 40,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: appTheame,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                    child: Text(
                                  "Skip",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                )),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: Responsive.height(2, context),
                          ),
                          Center(
                            child: RichText(
                              text: TextSpan(
                                text:
                                    TKeys.dont_have_account.translate(context),
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                  fontFamily: "intermedium",
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.04,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: TKeys.signup.translate(context),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () => {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          const SignupScreen()))
                                            },
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: appTheame,
                                          fontFamily: "intersemibold",
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.045))
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: Responsive.height(2, context),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
