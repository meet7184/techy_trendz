import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:techytrendz/Screens/login/controller/login_controller.dart';
import '../../Utils/ColorScheme.dart';
import '../../Utils/Responsive.dart';
import '../../Utils/localization_service.dart';
import '../../Utils/t_key.dart';
import '../../core/utils/flitter_toast.dart';
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
  String emailerror = "";
  bool passvisible = true;
  String passerror = "";
  String stdiderror = "";
  bool value = false;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  // TextEditingController emailcontroler = TextEditingController();
  // TextEditingController passcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        SizedBox(
                          height: Responsive.height(3, context),
                        ),
                        Text(
                          TKeys.welcomeback.translate(context),
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.065,
                              fontFamily: "intersemibold"),
                        ),
                        SizedBox(
                          height: Responsive.height(1, context),
                        ),
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
                        SizedBox(
                          child: TextFormField(
                            validator: (val) =>
                                val!.trim().isEmpty ? "field required" : null,
                            controller: controller.emailIdController,
                            onChanged: (email) {
                              if (email.isNotEmpty) {
                                emailerror = "";
                                setState(() {});
                              }
                            },
                            keyboardType: TextInputType.text,
                            cursorColor: Colors.black,
                            textAlign: TextAlign.start,
                            cursorHeight: Responsive.height(3.5, context),
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.05),
                            decoration: InputDecoration(
                              hintText: TKeys.emailhint.translate(context),
                              errorText: emailerror,
                              prefixIcon: Icon(
                                Icons.email_outlined,
                                color: appTheame,
                                size: 25,
                              ),
                              hintStyle: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.04),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: appTheame,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: appTheame,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              contentPadding: const EdgeInsets.all(16),
                            ),
                          ),
                        ),
                        Text(
                          TKeys.password.translate(context),
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.048,
                              fontFamily: "intermedium"),
                        ),
                        SizedBox(
                          child: TextFormField(
                            validator: (val) =>
                                val!.trim().isEmpty ? "field required" : null,
                            controller: controller.passwordController,
                            onChanged: (password) {
                              if (password.isNotEmpty) {
                                passerror = "";
                                setState(() {});
                              }
                            },
                            keyboardType: TextInputType.text,
                            cursorColor: Colors.black,
                            textAlign: TextAlign.start,
                            obscureText: passvisible,
                            cursorHeight: Responsive.height(3.5, context),
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.05),
                            decoration: InputDecoration(
                              hintText: TKeys.password_hint.translate(context),
                              errorText: passerror,
                              suffixIcon: Padding(
                                padding: const EdgeInsets.only(
                                    right: 10.0, top: 10, bottom: 10),
                                child: Container(
                                  width: 60.0,
                                  decoration: BoxDecoration(
                                    color: appTheame.withOpacity(0.2),
                                    border: Border.all(
                                      color: appTheame,
                                      width: 1.5,
                                    ),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 5),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        passvisible = !passvisible;
                                      });
                                    },
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          passvisible
                                              ? TKeys.view.translate(context)
                                              : TKeys.hide.translate(context),
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.035,
                                              color: appTheame,
                                              fontFamily: "poppinsmedium"),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              prefixIcon: Icon(
                                Icons.lock_outline,
                                color: appTheame,
                                size: 25,
                              ),
                              hintStyle: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.04),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: appTheame,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: appTheame,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              contentPadding: const EdgeInsets.all(16),
                            ),
                          ),
                        ),
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
                        InkWell(
                          onTap: () async {
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
                          child: Container(
                            decoration: BoxDecoration(
                                color: appTheame,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.grey,
                                      blurRadius: 10, // soften the shadow
                                      offset: Offset(0, 5)),
                                ]),
                            width: MediaQuery.of(context).size.width,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 15.0),
                              child: Text(
                                TKeys.signin.translate(context),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.053,
                                    fontFamily: "intersemibold",
                                    color: Colors.white),
                              ),
                            ),
                          ),
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
                              text: TKeys.dont_have_account.translate(context),
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
                                        fontSize:
                                            MediaQuery.of(context).size.width *
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
    );
  }
}
