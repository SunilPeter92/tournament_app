class OngoingJoinModel {
  List<Data> datas;

  OngoingJoinModel({this.datas});

  OngoingJoinModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      datas = new List<Data>();
      json['data'].forEach((v) {
        datas.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.datas != null) {
      data['data'] = this.datas.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int id;
  String uname;
  String country;
  String mobile;
  String email;
  String promo;
  String password;
  Null gender;
  Null dob;
  String type;
  String wallet;
  String coins;
  int status;

  Data(
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
        this.coins,
        this.status});

  Data.fromJson(Map<String, dynamic> json) {
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
    coins = json['coins'];
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
    data['coins'] = this.coins;
    data['status'] = this.status;
    return data;
  }
}