class otpclass {
  int? status;
  String? response;
  Data? data;

  otpclass({this.status, this.response, this.data});

  otpclass.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    response = json['response'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['response'] = this.response;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? apiToken;
  String? email;
  String? name;
  String? profilePic;
  String? location;
  String? latitude;
  String? longitude;

  Data(
      {this.apiToken,
      this.email,
      this.name,
      this.profilePic,
      this.location,
      this.latitude,
      this.longitude});

  Data.fromJson(Map<String, dynamic> json) {
    apiToken = json['api_token'];
    email = json['email'];
    name = json['name'];
    profilePic = json['profile_pic'];
    location = json['location'];
    latitude = json['latitude'];
    longitude = json['longitude'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['api_token'] = this.apiToken;
    data['email'] = this.email;
    data['name'] = this.name;
    data['profile_pic'] = this.profilePic;
    data['location'] = this.location;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    return data;
  }
}
