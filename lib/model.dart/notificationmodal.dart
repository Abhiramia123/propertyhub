class notifyclass {
  int? status;
  Data? data;
  String? message;

  notifyclass({this.status, this.data, this.message});

  notifyclass.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['message'] = this.message;
    return data;
  }
}

class Data {
  int? totalPageCount;
  String? currentPage;
  List<Notifications>? notifications;

  Data({this.totalPageCount, this.currentPage, this.notifications});

  Data.fromJson(Map<String, dynamic> json) {
    totalPageCount = json['total_page_count'];
    currentPage = json['current_page'];
    if (json['notifications'] != null) {
      notifications = <Notifications>[];
      json['notifications'].forEach((v) {
        notifications!.add(new Notifications.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total_page_count'] = this.totalPageCount;
    data['current_page'] = this.currentPage;
    if (this.notifications != null) {
      data['notifications'] =
          this.notifications!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Notifications {
  int? id;
  String? notificationHeading;
  String? typeOfNotification;
  String? notificationText;
  String? status;
  String? date;

  Notifications(
      {this.id,
      this.notificationHeading,
      this.typeOfNotification,
      this.notificationText,
      this.status,
      this.date});

  Notifications.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    notificationHeading = json['notification_heading'];
    typeOfNotification = json['type_of_notification'];
    notificationText = json['notification_text'];
    status = json['status'];
    date = json['date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['notification_heading'] = this.notificationHeading;
    data['type_of_notification'] = this.typeOfNotification;
    data['notification_text'] = this.notificationText;
    data['status'] = this.status;
    data['date'] = this.date;
    return data;
  }
}