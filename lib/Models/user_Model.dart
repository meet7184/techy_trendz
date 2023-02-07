// class UserModel {
//   UserModel({
//     this.id,
//     this.userLogin,
//     this.userPass,
//     this.userNicename,
//     this.userEmail,
//     this.birthdate,
//     this.userUrl,
//     this.userRegistered,
//     this.userActivationKey,
//     this.userStatus,
//     this.displayName,
//   });
//
//   String? id;
//   String? userLogin;
//   String? userPass;
//   String? userNicename;
//   String? userEmail;
//   dynamic birthdate;
//   String? userUrl;
//   DateTime? userRegistered;
//   String? userActivationKey;
//   String? userStatus;
//   String? displayName;
//
//   factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
//         id: json["ID"],
//         userLogin: json["user_login"],
//         userPass: json["user_pass"],
//         userNicename: json["user_nicename"],
//         userEmail: json["user_email"],
//         birthdate: json["birthdate"],
//         userUrl: json["user_url"],
//         userRegistered: DateTime.parse(json["user_registered"]),
//         userActivationKey: json["user_activation_key"],
//         userStatus: json["user_status"],
//         displayName: json["display_name"],
//       );
//
//   Map<String, dynamic> toJson() => {
//         "ID": id,
//         "user_login": userLogin,
//         "user_pass": userPass,
//         "user_nicename": userNicename,
//         "user_email": userEmail,
//         "birthdate": birthdate,
//         "user_url": userUrl,
//         "user_registered": userRegistered?.toIso8601String(),
//         "user_activation_key": userActivationKey,
//         "user_status": userStatus,
//         "display_name": displayName,
//       };
// }

class UserModel {
  UserModel({
    required this.verificationCode,
    required this.userLogin,
    required this.userPassword,
    required this.success,
    required this.data,
    required this.code,
    required this.message,
  });

  String verificationCode;
  String userLogin;
  String userPassword;
  bool success;
  UserData data;
  int code;
  String message;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        verificationCode: json["verification_code"],
        userLogin: json["user_login"],
        userPassword: json["user_password"],
        success: json["success"],
        data: UserData.fromJson(json["data"]),
        code: json["code"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "verification_code": verificationCode,
        "user_login": userLogin,
        "user_password": userPassword,
        "success": success,
        "data": data.toJson(),
        "code": code,
        "message": message,
      };
}

class UserData {
  UserData({
    required this.id,
    required this.userLogin,
    required this.userPass,
    required this.userNicename,
    required this.userEmail,
    this.birthdate,
    required this.userUrl,
    required this.userRegistered,
    required this.userActivationKey,
    required this.userStatus,
    required this.displayName,
  });

  String id;
  String userLogin;
  String userPass;
  String userNicename;
  String userEmail;
  dynamic birthdate;
  String userUrl;
  DateTime userRegistered;
  String userActivationKey;
  String userStatus;
  String displayName;

  factory UserData.fromJson(Map<String, dynamic> json) => UserData(
        id: json["ID"],
        userLogin: json["user_login"],
        userPass: json["user_pass"],
        userNicename: json["user_nicename"],
        userEmail: json["user_email"],
        birthdate: json["birthdate"],
        userUrl: json["user_url"],
        userRegistered: DateTime.parse(json["user_registered"]),
        userActivationKey: json["user_activation_key"],
        userStatus: json["user_status"],
        displayName: json["display_name"],
      );

  Map<String, dynamic> toJson() => {
        "ID": id,
        "user_login": userLogin,
        "user_pass": userPass,
        "user_nicename": userNicename,
        "user_email": userEmail,
        "birthdate": birthdate,
        "user_url": userUrl,
        "user_registered": userRegistered.toIso8601String(),
        "user_activation_key": userActivationKey,
        "user_status": userStatus,
        "display_name": displayName,
      };
}
