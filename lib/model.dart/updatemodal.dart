class updatedata {
  int? status;
  UserData? userData;
  String? response;

  updatedata({this.status, this.userData, this.response});

  updatedata.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    userData = json['user_data'] != null
        ? new UserData.fromJson(json['user_data'])
        : null;
    response = json['response'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.userData != null) {
      data['user_data'] = this.userData!.toJson();
    }
    data['response'] = this.response;
    return data;
  }
}

class UserData {
  String? name;
  String? email;
  String? phone;
  String? address;
  String? profilePic;

  UserData({this.name, this.email, this.phone, this.address, this.profilePic});

  UserData.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    address = json['address'];
    profilePic = json['profile_pic'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['address'] = this.address;
    data['profile_pic'] = this.profilePic;
    return data;
  }
}
