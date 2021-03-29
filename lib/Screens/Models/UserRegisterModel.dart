// To parse this JSON data, do
//
//     final userRegisterModel = userRegisterModelFromJson(jsonString);



class UserRegisterModel {
  UserRegisterModel({
    this.getUser,
  });

  GetUser getUser;

  factory UserRegisterModel.fromJson(Map<String, dynamic> json) => UserRegisterModel(
    getUser: GetUser.fromJson(json["get_user"]),
  );

  Map<String, dynamic> toJson() => {
    "get_user": getUser.toJson(),
  };
}

class GetUser {
  GetUser({
    this.id,
    this.uname,
    this.country,
    this.mobile,
    this.email,
    this.promo,
    this.password,
    this.gender,
    this.dob,
    this.type,
    this.wallet,
    this.status,
  });

  int id;
  String uname;
  String country;
  String mobile;
  String email;
  String promo;
  String password;
  String gender;
  String dob;
  String type;
  String wallet;
  int status;

  factory GetUser.fromJson(Map<String, dynamic> json) => GetUser(
    id: json["id"],
    uname: json["uname"],
    country: json["country"],
    mobile: json["mobile"],
    email: json["email"],
    promo: json["promo"],
    password: json["password"],
    gender: json["gender"],
    dob: json["dob"],
    type: json["type"],
    wallet: json["wallet"],
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "uname": uname,
    "country": country,
    "mobile": mobile,
    "email": email,
    "promo": promo,
    "password": password,
    "gender": gender,
    "dob": dob,
    "type": type,
    "wallet": wallet,
    "status": status,
  };
}
