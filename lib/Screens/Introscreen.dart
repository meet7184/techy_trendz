import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:techytrendz/Screens/login/Loginscreen.dart';
import 'package:techytrendz/Utils/ColorScheme.dart';

import '../Utils/Responsive.dart';
import '../util/app_prefs.dart';
import '../Utils/t_key.dart';

class OnBoardingScreen extends StatefulWidget {
  static const String routeName = '/onBoardingScreen';
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController pagecontroller = PageController();
  int currentindex = 0;
  final appPref = GetIt.I.get<AppPrefs>();

  @override
  Widget build(BuildContext context) {
    List<Widget> introtitle = <Widget>[
      Center(
        child: Pages(
            maintext: Text(
              TKeys.intro1_title.translate(context),
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: MediaQuery.of(context).size.width * 0.075,
                  fontFamily: "poppinsmedium",
                  fontWeight: FontWeight.bold),
            ),
            subtext: Text(
              TKeys.intro1_subtitle.translate(context),
              style: TextStyle(
                color: Colors.black,
                fontSize: MediaQuery.of(context).size.width * 0.045,
                fontFamily: "poppinsregular",
              ),
            ),
            imagepath: "assets/s1.png"),
      ),
      Center(
        child: Pages(
            maintext: Text(
              TKeys.intro2_title.translate(context),
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: MediaQuery.of(context).size.width * 0.075,
                  fontFamily: "poppinsmedium",
                  fontWeight: FontWeight.bold),
            ),
            subtext: Text(
              TKeys.intro2_subtitle.translate(context),
              style: TextStyle(
                color: Colors.black,
                fontSize: MediaQuery.of(context).size.width * 0.045,
                fontFamily: "poppinsregular",
              ),
            ),
            imagepath: "assets/s2.png"),
      ),
      Center(
        child: Pages(
            maintext: Text(
              TKeys.intro3_title.translate(context),
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: MediaQuery.of(context).size.width * 0.075,
                  fontFamily: "poppinsmedium",
                  fontWeight: FontWeight.bold),
            ),
            subtext: Text(
              TKeys.intro3_subtitle.translate(context),
              style: TextStyle(
                color: Colors.black,
                fontSize: MediaQuery.of(context).size.width * 0.045,
                fontFamily: "poppinsregular",
              ),
            ),
            imagepath: "assets/s3.png"),
      ),
    ];
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: pagecontroller,
                onPageChanged: (data) {
                  setState(() {
                    currentindex = data;
                  });
                },
                children: introtitle,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          for (int i = 0; i < introtitle.length; i++)
                            if (i == currentindex)
                              Padding(
                                padding: EdgeInsets.all(
                                    Responsive.height(0.5, context)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: const [
                                    Slidedots(true),
                                  ],
                                ),
                              )
                            else
                              Padding(
                                padding: EdgeInsets.all(
                                    Responsive.height(0.5, context)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Slidedots(false),
                                  ],
                                ),
                              ),
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          if (currentindex < introtitle.length - 1) {
                            currentindex++;
                            pagecontroller.animateToPage(
                              currentindex,
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.linear,
                            );
                            setState(() {});
                          } else {
                            appPref.setOnBoardingStatus = true;
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LoginScreen(),
                              ),
                            );
                          }
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: appTheame,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: Responsive.width(8, context),
                              vertical: Responsive.width(3, context),
                            ),
                            child: Text(
                              currentindex == introtitle.length - 1
                                  ? TKeys.start.translate(context)
                                  : TKeys.next.translate(context),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.045,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                  fontFamily: "latoregular"),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Responsive.height(7, context),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Pages extends StatefulWidget {
  final subtext, imagepath;
  final maintext;

  const Pages({this.maintext, this.subtext, this.imagepath});

  @override
  State<Pages> createState() => _PagesState();
}

class _PagesState extends State<Pages> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          widget.imagepath,
          fit: BoxFit.fill,
          width: MediaQuery.of(context).size.width,
          height: Responsive.height(60, context),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: Responsive.height(2, context),
              ),
              widget.maintext,
              SizedBox(
                height: Responsive.height(1.5, context),
              ),
              widget.subtext
            ],
          ),
        )
      ],
    );
  }
}

class Slidedots extends StatelessWidget {
  final isactive;

  const Slidedots(this.isactive);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 120),
      height: isactive
          ? Responsive.width(2.5, context)
          : Responsive.width(3, context),
      width: isactive
          ? Responsive.width(12, context)
          : Responsive.width(3, context),
      decoration: BoxDecoration(
        color: isactive ? appTheame : Colors.black38,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
