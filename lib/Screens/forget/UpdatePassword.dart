import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:techytrendz/Screens/SuccessFullScreen.dart';
import 'package:techytrendz/Screens/forget/controller/forget_controller.dart';

import '../../Utils/ColorScheme.dart';
import '../../Utils/Responsive.dart';
import '../../core/utils/flitter_toast.dart';

class UpdatePassword extends StatefulWidget {
  const UpdatePassword({Key? key}) : super(key: key);

  @override
  State<UpdatePassword> createState() => _UpdatePasswordState();
}

class _UpdatePasswordState extends State<UpdatePassword> {
  bool passvisible = true;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController newPasswordcontroller = TextEditingController();
  TextEditingController confirmPasswordcontroller = TextEditingController();

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
                              "Reset Password",
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.065,
                                  fontFamily: "poppinssemibold"),
                            ),
                            SizedBox(
                              height: Responsive.height(1, context),
                            ),
                            Text(
                              "Lorem ipsum dolor sit amet,",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.045,
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
                              height: Responsive.height(5, context),
                            ),
                            Text(
                              "New Password",
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.043,
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
                                controller: newPasswordcontroller,
                                onChanged: (password) {},
                                keyboardType: TextInputType.text,
                                cursorColor: Colors.black,
                                textAlign: TextAlign.start,
                                obscureText: passvisible,
                                cursorHeight: Responsive.height(3.5, context),
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.05),
                                decoration: InputDecoration(
                                  hintText: "Enter your Password",
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
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 5),
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
                                              passvisible ? "View" : "Hide",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize:
                                                      MediaQuery.of(context)
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
                              height: Responsive.height(2, context),
                            ),
                            Text(
                              "Confirm Password",
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.043,
                                  fontFamily: "intermedium"),
                            ),
                            SizedBox(
                              height: Responsive.height(1, context),
                            ),
                            SizedBox(
                              child: TextFormField(
                                validator: (val) => val!.trim().isEmpty
                                    ? "field required"
                                    : val.trim() ==
                                            newPasswordcontroller.text.trim()
                                        ? null
                                        : "password not match",
                                controller: confirmPasswordcontroller,
                                onChanged: (password) {},
                                keyboardType: TextInputType.text,
                                cursorColor: Colors.black,
                                textAlign: TextAlign.start,
                                obscureText: passvisible,
                                cursorHeight: Responsive.height(3.5, context),
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.05),
                                decoration: InputDecoration(
                                  hintText: "Enter your Password",
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
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 5),
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
                                              passvisible ? "View" : "Hide",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize:
                                                      MediaQuery.of(context)
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
                              height: Responsive.height(5, context),
                            ),
                            InkWell(
                              onTap: () async {
                                disposeKeyboard();
                                if (formKey.currentState!.validate()) {
                                  formKey.currentState!.save();
                                  final response =
                                      await controller.resetPassword(
                                          newPasswordcontroller.text);
                                  if (response) {
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const SuccessFullScreen("signin"),
                                      ),
                                    );
                                    showToast("Password reset successfully.");
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
                                    "Update",
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
