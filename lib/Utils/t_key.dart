import 'localization_service.dart';

enum TKeys{
  intro1_title,
  intro1_subtitle,
  intro2_title,
  intro2_subtitle,
  intro3_title,
  intro3_subtitle,
  next,
  start,
  welcomeback,
  login_title,
  email_phone,
  emailhint,
  password,
  password_hint,
  forgotpassword,
  view,
  hide,
  signin,
  youcan_connect_with,
  dont_have_account,
  signup,
  username,
  username_hint,
  email,
  phonenumber,
  phonenumber_hint,
  already_have_account,
  verification,
  verify,

}

//TKeys.hello
extension TKeysExtention on TKeys {
  String get _string => toString().split('.')[1];

  String translate(context) {
    return LocalizationService.of(context).translate(_string) ?? '';
  }
}