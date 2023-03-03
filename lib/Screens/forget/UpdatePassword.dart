import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:techytrendz/Screens/SuccessFullScreen.dart';
import 'package:techytrendz/Screens/forget/controller/forget_controller.dart';
import 'package:techytrendz/widget/common_submit_button.dart';

import '../../Utils/ColorScheme.dart';
import '../../Utils/Responsive.dart';
import '../../core/utils/flitter_toast.dart';
import '../../widget/textFied.dart';

class UpdatePassword extends StatefulWidget {
  const UpdatePassword({Key? key}) : super(key: key);

  @override
  State<UpdatePassword> createState() => _UpdatePasswordState();
}

class _UpdatePasswordState extends State<UpdatePassword> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool hidePassword = true;
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
                                fontFamily: "poppinssemibold",
                              ),
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
                            CustomTextField2(
                              validator: (val) =>
                                  val!.trim().isEmpty ? "field required" : null,
                              textFieldType: TextFieldType.updatePasswordField,
                              textEditingController: newPasswordcontroller,
                              suffixIcon: Icon(
                                Icons.check_circle_rounded,
                                color: Color(0xff0188CC),
                                size: 20,
                              ),
                            ),
                            SizedBox(height: Responsive.height(2, context)),
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
                            CustomTextField2(
                              validator: (val) => val!.trim().isEmpty
                                  ? "field required"
                                  : val.trim() ==
                                          newPasswordcontroller.text.trim()
                                      ? null
                                      : "password not match",
                              textFieldType: TextFieldType.emailPassword,
                              textEditingController: confirmPasswordcontroller,
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
                            SizedBox(
                              height: Responsive.height(5, context),
                            ),
                            CommonSubmitButton(
                              text: "Update",
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
