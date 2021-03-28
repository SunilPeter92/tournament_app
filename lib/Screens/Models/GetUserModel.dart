class GetUserModel {
  GetUser getUser;

  GetUserModel({this.getUser});

  GetUserModel.fromJson(Map<String, dynamic> json) {
    getUser = json['get_user'] != null
        ? new GetUser.fromJson(json['get_user'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.getUser != null) {
      data['get_user'] = this.getUser.toJson();
    }
    return data;
  }
}

class GetUser {
  int id;
  String uname;
  String country;
  String mobile;
  String email;
  String promo;
  String password;
  var gender;
  var dob;
  String type;
  String wallet;
  int status;

  GetUser(
      {this.id,
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
        this.status});

  GetUser.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    uname = json['uname'];
    country = json['country'];
    mobile = json['mobile'];
    email = json['email'];
    promo = json['promo'];
    password = json['password'];
    gender = json['gender'];
    dob = json['dob'];
    type = json['type'];
    wallet = json['wallet'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['uname'] = this.uname;
    data['country'] = this.country;
    data['mobile'] = this.mobile;
    data['email'] = this.email;
    data['promo'] = this.promo;
    data['password'] = this.password;
    data['gender'] = this.gender;
    data['dob'] = this.dob;
    data['type'] = this.type;
    data['wallet'] = this.wallet;
    data['status'] = this.status;
    return data;
  }
}