import 'package:flutter/material.dart';
import '../../Utils/ColorScheme.dart';
import '../../Utils/HeaderPart.dart';
import '../../Utils/Responsive.dart';

//TODO : screen no 13
class OrderScreen extends StatefulWidget {
  final GlobalKey<ScaffoldState> _scaffoldkey;
  const OrderScreen(this._scaffoldkey, {Key? key}) : super(key: key);

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  bool order = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        HeaderPart(widget._scaffoldkey),
        SizedBox(
          height: Responsive.height(1, context),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                top: Responsive.height(1, context),
                right: Responsive.width(5, context),
                left: Responsive.width(5, context),
              ),
              child: order
                  ? ListView.builder(
                      itemCount: 5,
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(
                              bottom: Responsive.height(2, context)),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 5.0, // soften the shadow
                                    spreadRadius: 1.0,
                                  )
                                ]),
                            child: Padding(
                              padding:
                                  EdgeInsets.all(Responsive.width(2, context)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(color: appTheame),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        'assets/powerbank.png',
                                        fit: BoxFit.cover,
                                        width: Responsive.width(30, context),
                                        height: Responsive.height(15, context),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: Responsive.width(2, context),
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Power Banks',
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.05,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w300,
                                              fontFamily: "latobold"),
                                        ),
                                        SizedBox(
                                          height: Responsive.height(1, context),
                                        ),
                                        Text(
                                          'M / Nude',
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.04,
                                              color: Colors.black38,
                                              fontWeight: FontWeight.w300,
                                              fontFamily: "latoregular"),
                                        ),
                                        SizedBox(
                                          height: Responsive.height(1, context),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'Order Id: ',
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                  fontSize:
                                                      MediaQuery.of(context)
                                                              .size
                                                              .width *
                                                          0.04,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w500,
                                                  fontFamily: "latoregular"),
                                            ),
                                            Text(
                                              '#1234594679',
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                  fontSize:
                                                      MediaQuery.of(context)
                                                              .size
                                                              .width *
                                                          0.04,
                                                  color: appTheame,
                                                  fontWeight: FontWeight.w300,
                                                  fontFamily: "latoregular"),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: Responsive.height(1, context),
                                        ),
                                        Text(
                                          'Delivered at 5 SEP, 2022',
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.035,
                                              color:
                                                  Colors.black.withOpacity(0.5),
                                              fontWeight: FontWeight.w300,
                                              fontFamily: "latoregular"),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      })
                  : Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.6),
                            blurRadius: 6.0, // soften the shadow
                            spreadRadius: 2.0,
                          ),
                        ],
                      ),
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                          padding: EdgeInsets.only(
                            top: Responsive.height(2, context),
                            right: Responsive.width(5, context),
                            left: Responsive.width(5, context),
                            bottom: Responsive.height(15, context),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: Responsive.height(1, context),
                              ),
                              Text(
                                "ORDERS",
                                style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.06,
                                  color: Colors.black,
                                  fontFamily: "latoregular",
                                ),
                              ),
                              SizedBox(
                                height: Responsive.height(10, context),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/emptybox.png",
                                    height: Responsive.width(45, context),
                                    fit: BoxFit.fill,
                                  ),
                                  SizedBox(
                                    height: Responsive.height(2, context),
                                  ),
                                  Text(
                                    "No order has been made yet.",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.05,
                                      color: Colors.black,
                                      fontFamily: "robotonormal",
                                    ),
                                  ),
                                  SizedBox(
                                    height: Responsive.height(2, context),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: appTheame,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 15.0,
                                        horizontal: 35,
                                      ),
                                      child: Text(
                                        "GO SHOPPING",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.045,
                                          fontFamily: "latobold",
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )),
                    ),
            ),
          ),
        ),
        SizedBox(
          height: Responsive.height(2, context),
        ),
      ],
    ));
  }
}
