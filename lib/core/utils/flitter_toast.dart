import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';

void showToast(String msg) {
  Fluttertoast.cancel();
  Fluttertoast.showToast(msg: msg);
}

void disposeKeyboard() {
  return FocusManager.instance.primaryFocus?.unfocus();
}
