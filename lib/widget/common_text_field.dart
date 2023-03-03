import 'package:flutter/material.dart';

enum TextFieldType {
  search,
}

class CustomTextField extends StatelessWidget {
  final TextFieldType textFieldType;
  final TextEditingController? textEditingController;
  final Widget? clearTextWidget;
  final String? Function(String?)? validator;
  final bool obscureText;
  const CustomTextField({
    Key? key,
    this.validator,
    this.textEditingController,
    required this.textFieldType,
    this.clearTextWidget,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: TextFormField(
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 17,
          color: Colors.black,
        ),
        textAlignVertical: TextAlignVertical.center,
        textInputAction: textInputAction,
        //keyboardType: textInputType,
        obscureText: obscureText,
        controller: textEditingController,
        validator:
            validator ?? (val) => val!.trim().isEmpty ? "field required" : null,
        decoration: InputDecoration(
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide.none),
          hintStyle: TextStyle(color: Colors.black38),
          fillColor: Colors.white,
          filled: true,
          contentPadding: const EdgeInsets.only(top: 10, left: 15),
          prefixIcon: prefixIcon,
          hintText: hintText,
        ),
      ),
    );
  }

  // TextInputType? get textInputType {
  //   switch (textFieldType) {
  //     case TextFieldType.phoneNumber:
  //
  //       return TextInputType.number;
  //   }
  //   return null;
  // }

  TextInputAction? get textInputAction {
    switch (textFieldType) {
      case TextFieldType.search:
        return TextInputAction.next;
      default:
        return null;
    }
  }

  Widget? get prefixIcon {
    switch (textFieldType) {
      case TextFieldType.search:
        return Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Icon(
            Icons.search,
            color: Color(0xff7F8E9D),
            size: 20,
          ),
        );
      default:
        return null;
    }
  }

  String? get hintText {
    switch (textFieldType) {
      case TextFieldType.search:
        return "Search anyting...";
      default:
        return null;
    }
  }
}
