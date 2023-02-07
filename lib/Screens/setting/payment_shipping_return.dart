import 'package:flutter/material.dart';
import '../../Utils/FooterPart.dart';
import '../../Utils/HeaderPart.dart';
import '../../Utils/Responsive.dart';

class PaymentShippingreturn extends StatefulWidget {
  final GlobalKey<ScaffoldState> _scaffoldkey;
  const PaymentShippingreturn(this._scaffoldkey, {Key? key}) : super(key: key);

  @override
  State<PaymentShippingreturn> createState() => _PaymentShippingreturnState();
}

class _PaymentShippingreturnState extends State<PaymentShippingreturn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderPart(widget._scaffoldkey),
          SizedBox(
            height: Responsive.height(1, context),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20),
                        getTitle("Payments, Shipping & Returns"),
                        SizedBox(height: 15),
                        Text(
                          "Make secure payment via many options:",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(height: 10),
                        getText("Credit Debit Cards"),
                        SizedBox(height: 5),
                        getText("PayPal"),
                        SizedBox(height: 5),
                        getText("ACH Bank deposit"),
                        SizedBox(height: 20),
                        getTitle("Shipping"),
                        SizedBox(height: 20),
                        getDetails(
                            "All orders are shipped from our North American offices in Florida and Ontario within North American vai DHL Express, Fedex or UPS to USA, CANADA"),
                        SizedBox(height: 10),
                        getDetails(
                            "Express Shipping 4-7 business days (Please note: Covid may affect shipping times )"),
                        SizedBox(height: 10),
                        getDetails(
                            "Most orders are shipped within 48 hours after cleared payment (excluding weekends & holiday). just because its free doesn't mean it has to take long time."),
                        SizedBox(height: 20),
                        Text(
                          "TechyTrendz.com understands that getting your orders quickly is important to you, so we make every effort to process your orders quickly.",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(height: 20),
                        detailsText("1.",
                            "if you received damaged or defective items. please contact us."),
                        SizedBox(height: 5),
                        detailsText("2.",
                            "Return or refund requests should be made eithin 7 day of delivery."),
                        SizedBox(height: 5),
                        detailsText("3.",
                            "All items must be in original packaging and condition as received."),
                        SizedBox(height: 5),
                        detailsText(
                            "4.", "Return shipping cost paid by buyer."),
                        SizedBox(height: 20),
                        getTitle("Please note our policy:"),
                        SizedBox(height: 20),
                        getDetails(
                            "Any import duties, taxes, charges, etc are paid by buyer."),
                        SizedBox(height: 10),
                        getDetails(
                            "In case of any technical error or out of stock products. reserve the right to cancel your order and refund your full money."),
                        SizedBox(height: 30),
                        getTitle("Refunds"),
                        SizedBox(height: 20),
                        getDetails(
                            "Refunds will processed after the items have been received and inspected."),
                        SizedBox(height: 10),
                        detailsText("1.",
                            "Returns must be sent to our office within 7 days of receiving the order with an online tracking no. "),
                        SizedBox(height: 5),
                        detailsText("2.",
                            "All unbranded/generic itrms purchased are solely at buyers responsibilityed."),
                        SizedBox(height: 5),
                        detailsText(
                            "3.", "Return shipping cost paid by buyer."),
                        SizedBox(height: 5),
                        detailsText("4.",
                            "Return shipping packege must be insured. we are not responsible for lost packages or customs in your country - in that case no refunds will be issued."),
                        SizedBox(height: 13),
                        getDetails(
                            "By using this website you agree to all our policies and terms."),
                        SizedBox(height: 50),
                      ],
                    ),
                  ),
                  const FooterPart(),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }

  Widget getTitle(String title) {
    return Text(
      title,
      style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
    );
  }

  Widget getDetails(String title) {
    return Text(
      title,
      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
    );
  }

  Widget getText(String title) {
    return Row(
      children: [
        CircleAvatar(radius: 3, backgroundColor: Colors.black),
        SizedBox(width: 10),
        Text(
          title,
          style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
        ),
      ],
    );
  }

  Widget detailsText(String number, String title) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          number,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
        ),
        SizedBox(width: 5),
        Expanded(
          child: Text(
            title,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
          ),
        ),
      ],
    );
  }
}
