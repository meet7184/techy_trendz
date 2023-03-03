import 'package:flutter/material.dart';
import 'package:techytrendz/Screens/login/Loginscreen.dart';
import 'package:techytrendz/widget/common_submit_button.dart';

import '../Utils/ColorScheme.dart';
import '../Utils/Responsive.dart';

class SuccessFullScreen extends StatefulWidget {
  final String screenname;

  const SuccessFullScreen(this.screenname, {Key? key}) : super(key: key);

  @override
  State<SuccessFullScreen> createState() => _SuccessFullScreenState();
}

class _SuccessFullScreenState extends State<SuccessFullScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: Responsive.height(3, context),
                      ),
                      Center(
                        child: Text(
                          "Thank You",
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.065,
                              fontFamily: "latobold"),
                        ),
                      ),
                      SizedBox(
                        height: Responsive.height(1, context),
                      ),
                      SizedBox(
                        height: Responsive.height(10, context),
                      ),
                      Center(
                        child: Image.asset(
                          'assets/success.png',
                          height: Responsive.height(30, context),
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(
                        height: Responsive.height(5, context),
                      ),
                      Text(
                        widget.screenname == "resetpassword"
                            ? "Your Password has been changed Successfully"
                            : "Your Account Has been created Successfully",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: MediaQuery.of(context).size.width * 0.045,
                            fontFamily: "poppinssemibold"),
                      ),
                      SizedBox(
                        height: Responsive.height(5, context),
                      ),
                      CommonSubmitButton(
                        text: "Sign In",
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginScreen(),
                            ),
                          );
                        },
                      ),
                      SizedBox(
                        height: Responsive.height(2, context),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
