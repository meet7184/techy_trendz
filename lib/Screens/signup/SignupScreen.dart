import 'dart:convert';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:techytrendz/Screens/login/Loginscreen.dart';
import 'package:techytrendz/Screens/signup/controller/signup_controller.dart';
import 'package:techytrendz/Utils/t_key.dart';
import 'package:http/http.dart' as http;
import 'package:techytrendz/widget/common_submit_button.dart';
import '../../Utils/Api.dart';
import '../../Utils/ColorScheme.dart';
import '../../Utils/Responsive.dart';
import '../../Utils/ShowMessage.dart';
import '../../core/utils/flitter_toast.dart';
import '../../widget/textFied.dart';
import 'SignupVerificationScreen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController userNamecontroler = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool hidePassword = true;
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
                        SizedBox(height: Responsive.height(1, context)),
                        CustomTextField2(
                          validator: (val) =>
                              val!.trim().isEmpty ? "field required" : null,
                          textFieldType: TextFieldType.commonField,
                          textEditingController: userNamecontroler,
                        ),
                        SizedBox(height: 20),
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
                        CustomTextField2(
                          validator: (val) =>
                              val!.trim().isEmpty ? "field required" : null,
                          textFieldType: TextFieldType.commonField,
                          textEditingController: controller.emailController,
                        ),
                        SizedBox(height: 20),
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
                        CustomTextField2(
                          validator: (val) =>
                              val!.trim().isEmpty ? "field required" : null,
                          textFieldType: TextFieldType.phoneNumber,
                          textEditingController: phoneController,
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
                        CustomTextField2(
                          validator: (val) =>
                              val!.trim().isEmpty ? "field required" : null,
                          textFieldType: TextFieldType.emailPassword,
                          textEditingController: passwordcontroller,
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
                        SizedBox(height: 20),
                        SizedBox(
                          height: Responsive.height(1, context),
                        ),
                        CommonSubmitButton(
                          text: "Sign Up",
                          onTap: () async {
                            disposeKeyboard();
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
