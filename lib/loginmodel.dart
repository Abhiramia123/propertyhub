class logindata {
  int? status;
  String? phone;
  int? otp;
  String? response;

  logindata({this.status, this.phone, this.otp, this.response});

  logindata.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    phone = json['phone'];
    otp = json['otp'];
    response = json['response'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['phone'] = this.phone;
    data['otp'] = this.otp;
    data['response'] = this.response;
    return data;
  }
}
