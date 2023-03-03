import 'package:flutter/material.dart';

enum TextFieldType {
  loginEmailID,
  emailPassword,
  commonField,
  phoneNumber,
  updatePasswordField,
}

class CustomTextField2 extends StatelessWidget {
  final TextFieldType textFieldType;
  final TextEditingController textEditingController;
  final Widget? clearTextWidget;
  final String? Function(String?)? validator;
  final bool obscureText;
  final Widget? suffixIcon;
  const CustomTextField2({
    Key? key,
    this.validator,
    required this.textEditingController,
    required this.textFieldType,
    this.clearTextWidget,
    this.obscureText = false,
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: Colors.black),
      textAlignVertical: TextAlignVertical.center,
      textInputAction: textInputAction,
      keyboardType: textInputType,
      maxLength: maxLength,
      obscureText: obscureText,
      controller: textEditingController,
      validator:
          validator ?? (val) => val!.trim().isEmpty ? "field required" : null,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Color(0xff0188CC)),
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none),
        fillColor: const Color(0xffF8F7FB),
        filled: true,
        contentPadding: const EdgeInsets.all(17),
        prefixIcon: prefix,
        suffixIcon: suffixIcon,
      ),
    );
  }

  // InputBorder get border {
  //   switch (textFieldType) {
  //     case TextFieldType.address:
  //     case TextFieldType.loginEmailID:
  //       return OutlineInputBorder(
  //         borderRadius: BorderRadius.circular(12),
  //         borderSide: const BorderSide(color: Colors.black26),
  //       );
  //     default:
  //       return UnderlineInputBorder(
  //         borderRadius: BorderRadius.circular(12),
  //         borderSide: const BorderSide(color: Colors.black26),
  //       );
  //   }
  // }

  int? get maxLength {
    switch (textFieldType) {
      case TextFieldType.phoneNumber:
        return 10;
    }
    return null;
  }

  TextInputType? get textInputType {
    switch (textFieldType) {
      case TextFieldType.phoneNumber:
        return TextInputType.number;
    }
    return null;
  }

  TextInputAction? get textInputAction {
    switch (textFieldType) {
      case TextFieldType.loginEmailID:
      case TextFieldType.emailPassword:
        return TextInputAction.next;
      default:
        return null;
    }
  }

  Widget? get prefix {
    switch (textFieldType) {
      case TextFieldType.loginEmailID:
        return const Icon(
          Icons.email_outlined,
          color: Color(0xff0188CC),
          size: 19,
        );
      case TextFieldType.emailPassword:
        return const Icon(
          Icons.lock_outline,
          color: Colors.black45,
          size: 19,
        );
      case TextFieldType.updatePasswordField:
        return const Icon(
          Icons.lock_outline,
          color: Colors.black45,
          size: 19,
        );
      default:
        return null;
    }
  }

  // Widget? get suffix {
  //   switch (textFieldType) {
  //     case TextFieldType.loginEmailID:
  //       return const Icon(
  //         Icons.check_circle_rounded,
  //         color: Color(0xff0188CC),
  //         size: 20,
  //       );
  //     case TextFieldType.updatePasswordField:
  //       return const Icon(
  //         Icons.check_circle_rounded,
  //         color: Color(0xff0188CC),
  //         size: 20,
  //       );
  //     case TextFieldType.emailPassword:
  //       return GestureDetector(
  //         onTap: () {},
  //         child: Padding(
  //           padding: const EdgeInsets.all(8.0),
  //           child: Container(
  //             height: 20,
  //             width: 60,
  //             decoration: BoxDecoration(
  //               border: Border.all(color: const Color(0xff0188CC)),
  //               color: Colors.blue.shade100,
  //               borderRadius: BorderRadius.circular(10),
  //             ),
  //             child: const Center(
  //                 child: Text(
  //               "View",
  //               style: TextStyle(color: Colors.black, fontSize: 13),
  //             )),
  //           ),
  //         ),
  //       );
  //
  //     default:
  //       return null;
  //   }
  // }
}
