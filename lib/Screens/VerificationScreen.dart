// import 'package:flutter/material.dart';
// import 'package:pin_code_fields/pin_code_fields.dart';
// import 'package:techytrendz/Screens/UpdatePassword.dart';
// import 'package:techytrendz/Utils/t_key.dart';
//
// import '../Utils/ColorScheme.dart';
// import '../Utils/Responsive.dart';
//
// class VerificationScreen extends StatefulWidget {
//   const VerificationScreen({Key? key}) : super(key: key);
//
//   @override
//   State<VerificationScreen> createState() => _VerificationScreenState();
// }
//
// class _VerificationScreenState extends State<VerificationScreen> {
//   String currentText = "";
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
//                 color: apptheame,
//               ),
//               Padding(
//                 padding: EdgeInsets.only(
//                     top: MediaQuery.of(context).size.height * 0.09),
//                 child: Container(
//                   padding: const EdgeInsets.symmetric(horizontal: 25),
//                   decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.only(
//                         topRight: Radius.circular(
//                             MediaQuery.of(context).size.width * 0.09),
//                         topLeft: Radius.circular(
//                             MediaQuery.of(context).size.width * 0.09),
//                       )),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       SizedBox(
//                         height: Responsive.height(3, context),
//                       ),
//                       Text(
//                         TKeys.verification.translate(context),
//                         style: TextStyle(
//                             fontSize: MediaQuery.of(context).size.width * 0.065,
//                             fontFamily: "intersemibold"),
//                       ),
//                       SizedBox(
//                         height: Responsive.height(1, context),
//                       ),
//                       Text(
//                         TKeys.login_title.translate(context),
//                         style: TextStyle(
//                             color: Colors.black45,
//                             fontSize: MediaQuery.of(context).size.width * 0.04,
//                             fontFamily: "interregular"),
//                       ),
//                       SizedBox(
//                         height: Responsive.height(3, context),
//                       ),
//                       Center(
//                         child: Image.asset(
//                           'assets/logo.png',
//                           height: Responsive.width(30, context),
//                           fit: BoxFit.fill,
//                         ),
//                       ),
//                       SizedBox(
//                         height: Responsive.height(5, context),
//                       ),
//                       PinCodeTextField(
//                         appContext: context,
//                         length: 4,
//                         cursorColor: apptheame,
//                         enableActiveFill: true,
//                         keyboardType: TextInputType.number,
//                         textStyle: TextStyle(
//                             fontSize: MediaQuery.of(context).size.width * 0.06),
//                         boxShadows: const [
//                           BoxShadow(
//                             color: Colors.black26,
//                             spreadRadius: 1,
//                             blurRadius: 3,
//                           )
//                         ],
//                         pinTheme: PinTheme(
//                           selectedColor: Colors.white,
//                           shape: PinCodeFieldShape.box,
//                           inactiveColor: Colors.white,
//                           fieldWidth: Responsive.width(18, context),
//                           fieldHeight: Responsive.width(16, context),
//                           borderRadius: BorderRadius.circular(
//                               MediaQuery.of(context).size.width * 0.02),
//                           activeFillColor: Colors.white,
//                           activeColor: Colors.white,
//                           inactiveFillColor: Colors.white,
//                           disabledColor: Colors.white,
//                           selectedFillColor: Colors.white,
//                         ),
//                         onChanged: (value) {
//                           setState(() {
//                             currentText = value;
//                           });
//                         },
//                       ),
//                       SizedBox(
//                         height: Responsive.height(10, context),
//                       ),
//                       InkWell(
//                         onTap: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => const UpdatePassword(),
//                             ),
//                           );
//                         },
//                         child: Container(
//                           decoration: BoxDecoration(
//                               color: apptheame,
//                               borderRadius: BorderRadius.circular(20),
//                               boxShadow: const [
//                                 BoxShadow(
//                                     color: Colors.grey,
//                                     blurRadius: 10, // soften the shadow
//                                     offset: Offset(0, 5)),
//                               ]),
//                           width: MediaQuery.of(context).size.width,
//                           child: Padding(
//                             padding: const EdgeInsets.symmetric(vertical: 15.0),
//                             child: Text(
//                               TKeys.verify.translate(context),
//                               textAlign: TextAlign.center,
//                               style: TextStyle(
//                                   fontSize:
//                                       MediaQuery.of(context).size.width * 0.053,
//                                   fontFamily: "intersemibold",
//                                   color: Colors.white),
//                             ),
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                         height: Responsive.height(2, context),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
