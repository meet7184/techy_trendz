// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:pin_code_fields/pin_code_fields.dart';
// import 'package:techytrendz/Screens/signup/controller/signup_controller.dart';
// import 'package:http/http.dart' as http;
// import '../../Utils/ColorScheme.dart';
// import '../../Utils/Responsive.dart';
// import '../../core/utils/flitter_toast.dart';
// import '../SuccessFullScreen.dart';
//
// class SignupVerificationScreen extends StatefulWidget {
//   final email;
//   const SignupVerificationScreen(this.email, {Key? key}) : super(key: key);
//
//   @override
//   State<SignupVerificationScreen> createState() =>
//       _SignupVerificationScreenState();
// }
//
// class _SignupVerificationScreenState extends State<SignupVerificationScreen> {
//   String currentText = "";
//
//   TextEditingController otpController = TextEditingController();
//
//   // CallApi(String email, String otp, BuildContext context) async {
//   //   Map mapdata = {'email': email, 'registration_otp': otp};
//   //   http.Response myresponse = await http
//   //       .post(Uri.parse(Api.USER_URL + "register-verify"), body: mapdata);
//   //   var apiresponse = json.decode(myresponse.body);
//   //   print(apiresponse);
//   //   if (apiresponse['success']) {
//   //     Navigator.pop(context);
//   //     Navigator.push(
//   //       context,
//   //       MaterialPageRoute(
//   //         builder: (context) => const SuccessFullScreen("signup"),
//   //       ),
//   //     );
//   //   } else {
//   //     Navigator.pop(context);
//   //     showtoast(apiresponse['message'], context);
//   //   }
//   // }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Stack(
//             children: [
//               Container(
//                 height: 300,
//                 color: appTheame,
//               ),
//               Padding(
//                 padding: EdgeInsets.only(
//                     top: MediaQuery.of(context).size.height * 0.09),
//                 child: Container(
//                     padding: const EdgeInsets.symmetric(horizontal: 25),
//                     decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.only(
//                           topRight: Radius.circular(
//                               MediaQuery.of(context).size.width * 0.09),
//                           topLeft: Radius.circular(
//                               MediaQuery.of(context).size.width * 0.09),
//                         )),
//                     child: GetBuilder(
//                       builder: (SignUpController controller) {
//                         return Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             SizedBox(
//                               height: Responsive.height(3, context),
//                             ),
//                             Text(
//                               "Verification",
//                               style: TextStyle(
//                                   fontSize:
//                                       MediaQuery.of(context).size.width * 0.065,
//                                   fontFamily: "intersemibold"),
//                             ),
//                             SizedBox(
//                               height: Responsive.height(1, context),
//                             ),
//                             Text(
//                               "Let’s login for explore continues",
//                               style: TextStyle(
//                                   color: Colors.black45,
//                                   fontSize:
//                                       MediaQuery.of(context).size.width * 0.04,
//                                   fontFamily: "interregular"),
//                             ),
//                             SizedBox(
//                               height: Responsive.height(3, context),
//                             ),
//                             Center(
//                               child: Image.asset(
//                                 'assets/logo.png',
//                                 height: Responsive.width(30, context),
//                                 fit: BoxFit.fill,
//                               ),
//                             ),
//                             SizedBox(
//                               height: Responsive.height(5, context),
//                             ),
//                             PinCodeTextField(
//                               controller: otpController,
//                               appContext: context,
//                               length: 4,
//                               cursorColor: appTheame,
//                               enableActiveFill: true,
//                               keyboardType: TextInputType.number,
//                               textStyle: TextStyle(
//                                   fontSize:
//                                       MediaQuery.of(context).size.width * 0.06),
//                               boxShadows: const [
//                                 BoxShadow(
//                                   color: Colors.black26,
//                                   spreadRadius: 1,
//                                   blurRadius: 3,
//                                 )
//                               ],
//                               pinTheme: PinTheme(
//                                 selectedColor: Colors.white,
//                                 shape: PinCodeFieldShape.box,
//                                 inactiveColor: Colors.white,
//                                 fieldWidth: Responsive.width(18, context),
//                                 fieldHeight: Responsive.width(16, context),
//                                 borderRadius: BorderRadius.circular(
//                                     MediaQuery.of(context).size.width * 0.02),
//                                 activeFillColor: Colors.white,
//                                 activeColor: Colors.white,
//                                 inactiveFillColor: Colors.white,
//                                 disabledColor: Colors.white,
//                                 selectedFillColor: Colors.white,
//                               ),
//                               onChanged: (value) {
//                                 setState(() {
//                                   currentText = value;
//                                 });
//                               },
//                             ),
//                             SizedBox(
//                               height: Responsive.height(10, context),
//                             ),
//                             InkWell(
//                               onTap: () async {
//                                 disposeKeyboard();
//                                 final response = await controller
//                                     .otpVerification(otpController.text);
//                                 if (response) {
//                                   Navigator.pushReplacement(
//                                     context,
//                                     MaterialPageRoute(
//                                       builder: (context) =>
//                                           const SuccessFullScreen("signin"),
//                                     ),
//                                   );
//                                   showToast("Registration was Successfully");
//                                 }
//                               },
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: appTheame,
//                                     borderRadius: BorderRadius.circular(20),
//                                     boxShadow: const [
//                                       BoxShadow(
//                                           color: Colors.grey,
//                                           blurRadius: 10, // soften the shadow
//                                           offset: Offset(0, 5)),
//                                     ]),
//                                 width: MediaQuery.of(context).size.width,
//                                 child: Padding(
//                                   padding: const EdgeInsets.symmetric(
//                                       vertical: 15.0),
//                                   child: Text(
//                                     "Verify",
//                                     textAlign: TextAlign.center,
//                                     style: TextStyle(
//                                         fontSize:
//                                             MediaQuery.of(context).size.width *
//                                                 0.053,
//                                         fontFamily: "intersemibold",
//                                         color: Colors.white),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             SizedBox(
//                               height: Responsive.height(2, context),
//                             ),
//                           ],
//                         );
//                       },
//                     )),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../../Utils/ColorScheme.dart';
import '../../core/utils/flitter_toast.dart';
import '../SuccessFullScreen.dart';
import 'controller/signup_controller.dart';

class SignupVerificationScreen extends StatefulWidget {
  const SignupVerificationScreen({Key? key}) : super(key: key);

  @override
  State<SignupVerificationScreen> createState() =>
      _SignupVerificationScreenState();
}

class _SignupVerificationScreenState extends State<SignupVerificationScreen> {
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
                  child: GetBuilder(builder: (SignUpController controller) {
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
                        const SizedBox(height: 100),
                        GestureDetector(
                          onTap: () async {
                            disposeKeyboard();
                            final response = await controller
                                .otpVerification(otpController.text);
                            if (response) {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const SuccessFullScreen("signin"),
                                ),
                              );
                              showToast("Registration was Successfully");
                            }
                          },
                          child: Container(
                            height: 50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: appTheame,
                              borderRadius: BorderRadius.circular(13),
                            ),
                            child: Center(
                              child: Text(
                                "Verify",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 17,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
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
