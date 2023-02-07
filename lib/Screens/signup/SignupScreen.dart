import 'dart:convert';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:techytrendz/Screens/login/Loginscreen.dart';
import 'package:techytrendz/Screens/signup/controller/signup_controller.dart';
import 'package:techytrendz/Utils/t_key.dart';
import 'package:http/http.dart' as http;
import '../../Utils/Api.dart';
import '../../Utils/ColorScheme.dart';
import '../../Utils/Responsive.dart';
import '../../Utils/ShowMessage.dart';
import '../../core/utils/flitter_toast.dart';
import 'SignupVerificationScreen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  //String emailerror = "";
  bool passvisible = true;
  String passerror = "";
  String usernameerror = "";
  String phonenoerror = "";
  bool value = false;
  TextEditingController userNamecontroler = TextEditingController();
  TextEditingController phonenocontroler = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  // CallApi(String email, String password, String username, String phoneno,
  //     BuildContext context) async {
  //   Map mapdata = {
  //     'email': email,
  //     'password': password,
  //     'phone': phoneno,
  //     'username': username
  //   };
  //   http.Response myresponse =
  //       await http.post(Uri.parse(Api.USER_URL + "register"), body: mapdata);
  //   var apiresponse = json.decode(myresponse.body);
  //   print(apiresponse);
  //   if (myresponse.statusCode == 200) {
  //     Navigator.pop(context);
  //     // print(myresponse.body);
  //     showtoast(
  //         "Verification code sent your registered email address", context);
  //     Navigator.push(
  //         context,
  //         MaterialPageRoute(
  //             builder: (context) => SignupVerificationScreen(email)));
  //   } else {
  //     Navigator.pop(context);
  //     showtoast(apiresponse['message'], context);
  //   }
  // }

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
                  builder: (SignUpController controller) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: Responsive.height(3, context),
                        ),
                        Text(
                          TKeys.signup.translate(context),
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.065,
                              fontFamily: "poppinssemibold"),
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
                              fontFamily: "poppinssemibold"),
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

                        //TODO : username
                        Text(
                          TKeys.username.translate(context),
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.045,
                              fontFamily: "intermedium"),
                        ),
                        SizedBox(
                          height: Responsive.height(1, context),
                        ),
                        SizedBox(
                          child: TextFormField(
                            validator: (val) =>
                                val!.trim().isEmpty ? "field required" : null,
                            controller: userNamecontroler,
                            onChanged: (username) {},
                            keyboardType: TextInputType.text,
                            cursorColor: Colors.black,
                            textAlign: TextAlign.start,
                            cursorHeight: Responsive.height(3.5, context),
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.05),
                            decoration: InputDecoration(
                              hintText: TKeys.username_hint.translate(context),
                              errorText: usernameerror,
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

                        //TODO : email
                        Text(
                          TKeys.email.translate(context),
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.045,
                              fontFamily: "intermedium"),
                        ),
                        SizedBox(
                          height: Responsive.height(1, context),
                        ),
                        SizedBox(
                          child: TextFormField(
                            validator: (val) =>
                                val!.trim().isEmpty ? "field required" : null,
                            controller: controller.emailController,
                            onChanged: (username) {},
                            keyboardType: TextInputType.text,
                            cursorColor: Colors.black,
                            textAlign: TextAlign.start,
                            cursorHeight: Responsive.height(3.5, context),
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.05),
                            decoration: InputDecoration(
                              hintText: TKeys.username_hint.translate(context),
                              errorText: usernameerror,
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

                        //TODO : phone number
                        Text(
                          TKeys.phonenumber.translate(context) + "(Optional)",
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.045,
                              fontFamily: "intermedium"),
                        ),
                        SizedBox(
                          height: Responsive.height(1, context),
                        ),
                        SizedBox(
                          child: TextFormField(
                            maxLength: 10,
                            validator: (val) =>
                                val!.trim().isEmpty ? "field required" : null,
                            controller: phonenocontroler,
                            onChanged: (phoneno) {
                              // if (phoneno.isNotEmpty) {
                              //   phonenoerror = "";
                              //   setState(() {});
                              // }
                            },
                            keyboardType: TextInputType.number,
                            cursorColor: Colors.black,
                            textAlign: TextAlign.start,
                            cursorHeight: Responsive.height(3.5, context),
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.05),
                            decoration: InputDecoration(
                              hintText:
                                  TKeys.phonenumber_hint.translate(context),
                              errorText: phonenoerror,
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

                        //TODO : password
                        Text(
                          TKeys.password.translate(context),
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.047,
                              fontFamily: "poppinsmedium"),
                        ),
                        SizedBox(
                          height: Responsive.height(1, context),
                        ),
                        SizedBox(
                          child: TextFormField(
                            validator: (val) =>
                                val!.trim().isEmpty ? "field required" : null,
                            controller: passwordcontroller,
                            onChanged: (password) {
                              // if (password.isNotEmpty) {
                              //   passerror = "";
                              //   setState(() {});
                              // }
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
                        SizedBox(
                          height: Responsive.height(1, context),
                        ),
                        InkWell(
                          onTap: () async {
                            // setState(
                            //   () {
                            //     String username = useranmecontroler.text;
                            //     String email = emailcontroler.text;
                            //     String pass = passcontroller.text;
                            //     String phoneno = phonenocontroler.text;
                            //     if (username.isEmpty) {
                            //       usernameerror = "Username Can\'t Be Empty";
                            //     } else if (email.isEmpty) {
                            //       emailerror = "Email  Can\'t Be Empty";
                            //     } else if (pass.isEmpty) {
                            //       passerror = "Password  Can\'t Be Empty";
                            //     } else {
                            //       ShowLoaderDialog("Cheking data...", context);
                            //       CallApi(
                            //           email, pass, username, phoneno, context);
                            //     }
                            //   },
                            // );
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => const SignupVerificationScreen("lasijo4904@lance7.com"),
                            //   ),
                            // );
                            if (formKey.currentState!.validate()) {
                              formKey.currentState!.save();
                              disposeKeyboard();
                              final response = await controller.createAccount(
                                  userNamecontroler.text.trim(),
                                  passwordcontroller.text.trim());
                              if (response) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const SignupVerificationScreen(),
                                    ));
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
                                TKeys.signup.translate(context),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.053,
                                    fontFamily: "poppinsmedium",
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: Responsive.height(4, context),
                        ),

                        Center(
                          child: RichText(
                            text: TextSpan(
                              text:
                                  TKeys.already_have_account.translate(context),
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                                fontFamily: "poppinsbold",
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.04,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                    text: TKeys.signin.translate(context),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () => {
                                            Navigator.pushReplacement(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    const LoginScreen(),
                                              ),
                                            ),
                                          },
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: appTheame,
                                        fontFamily: "poppinsbold",
                                        fontSize:
                                            MediaQuery.of(context).size.width *
                                                0.045))
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: Responsive.height(4, context),
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
