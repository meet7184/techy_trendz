import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:techytrendz/Screens/forget/forget_verification_screen.dart';
import 'package:techytrendz/Utils/t_key.dart';
import '../../Utils/ColorScheme.dart';
import '../../Utils/Responsive.dart';
import 'controller/forget_controller.dart';
import '../../core/utils/flitter_toast.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  String emailerror = "";
  String stdiderror = "";
  TextEditingController emailcontroler = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: formKey,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Container(
                  height: 300,
                  color: appTheame,
                ),
                Padding(
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
                      builder: (ForgetPasswordController controller) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: Responsive.height(3, context),
                            ),
                            Text(
                              TKeys.forgotpassword.translate(context),
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
                              height: Responsive.height(10, context),
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
                                validator: (val) => val!.trim().isEmpty
                                    ? "field required"
                                    : null,
                                controller: controller.forgetEmailIdController,
                                onChanged: (email) {
                                  if (email.length > 0) {
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
                                        MediaQuery.of(context).size.width *
                                            0.05),
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
                                          MediaQuery.of(context).size.width *
                                              0.04),
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
                              height: Responsive.height(7, context),
                            ),
                            InkWell(
                              onTap: () async {
                                if (formKey.currentState!.validate()) {
                                  formKey.currentState!.save();
                                  final response =
                                      await controller.forgotPassword();
                                  if (response) {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const ForgetVerificationScreen(),
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
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 15.0),
                                  child: Text(
                                    "Continue",
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
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
