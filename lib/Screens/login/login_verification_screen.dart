import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:techytrendz/Screens/login/controller/login_controller.dart';
import '../../Utils/ColorScheme.dart';
import '../../Utils/PageIndex.dart';
import '../../core/utils/flitter_toast.dart';
import '../../widget/common_submit_button.dart';
import '../dashboar/MainScreen.dart';

class LoginVerificationScreen extends StatefulWidget {
  const LoginVerificationScreen({Key? key}) : super(key: key);

  @override
  State<LoginVerificationScreen> createState() =>
      _LoginVerificationScreenState();
}

class _LoginVerificationScreenState extends State<LoginVerificationScreen> {
  TextEditingController otpController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: appTheame,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 40),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: GetBuilder(builder: (LoginController controller) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 40),
                        const Text(
                          "Verification",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 25),
                        ),
                        const SizedBox(height: 17),
                        const Text(
                          "Let's Login For Explore Continues",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Colors.black26),
                        ),
                        const SizedBox(height: 25),
                        Center(
                          child: Image.asset(
                            "assets/logo.png",
                            height: 110,
                            width: 110,
                          ),
                        ),
                        const SizedBox(height: 30),
                        PinCodeTextField(
                          obscureText: true,
                          backgroundColor: Colors.transparent,
                          appContext: context,
                          length: 4,
                          animationType: AnimationType.fade,
                          blinkWhenObscuring: true,
                          pastedTextStyle: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                          pinTheme: PinTheme(
                            activeColor: Colors.white,
                            inactiveColor: Colors.white,
                            inactiveFillColor: Colors.white,
                            selectedFillColor: Colors.white,
                            activeFillColor: Colors.white,
                            disabledColor: Colors.white,
                            selectedColor: Colors.white,
                            shape: PinCodeFieldShape.box,
                            borderRadius: BorderRadius.circular(5),
                            fieldHeight: 90,
                            fieldOuterPadding:
                                const EdgeInsets.symmetric(horizontal: 10),
                            fieldWidth: 70,
                          ),
                          animationDuration: const Duration(milliseconds: 300),
                          controller: otpController,
                          onChanged: (otp) {},
                          keyboardType: TextInputType.number,
                          enableActiveFill: true,
                          boxShadows: const [
                            BoxShadow(
                              offset: Offset(0, 1),
                              color: Colors.black26,
                              blurRadius: 10,
                            ),
                          ],
                        ),
                        SizedBox(height: 100),
                        CommonSubmitButton(
                            text: 'Verify',
                            onTap: () async {
                              disposeKeyboard();
                              final response = await controller
                                  .loginVerificationAccount(otpController.text);
                              if (response) {
                                print("=======> $response");
                                PageIndex.currentpageindex = 0;
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const MainScreen(),
                                  ),
                                );
                                showToast("Registration was Successfully");
                              } else {
                                showToast("otp Wrong");
                              }
                            }),
                      ],
                    );
                  }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
