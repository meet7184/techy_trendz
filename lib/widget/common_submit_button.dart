import 'package:flutter/material.dart';

import '../Utils/ColorScheme.dart';

class CommonSubmitButton extends StatelessWidget {
  final void Function()? onTap;
  final String text;
  const CommonSubmitButton({Key? key, this.onTap, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
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
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.053,
                fontFamily: "intersemibold",
                color: Colors.white),
          ),
        ),
      ),
    );
  }
}
