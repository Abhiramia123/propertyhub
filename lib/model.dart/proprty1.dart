class propertyclass {
  int? status;
  BookedData? bookedData;

  propertyclass({this.status, this.bookedData});

  propertyclass.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    bookedData = json['booked_data'] != null
        ? new BookedData.fromJson(json['booked_data'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.bookedData != null) {
      data['booked_data'] = this.bookedData!.toJson();
    }
    return data;
  }
}

class BookedData {
  int? totalPageCount;
  String? currentPage;
  List<BookedProperty>? bookedProperty;

  BookedData({this.totalPageCount, this.currentPage, this.bookedProperty});

  BookedData.fromJson(Map<String, dynamic> json) {
    totalPageCount = json['total_page_count'];
    currentPage = json['current_page'];
    if (json['booked_property'] != null) {
      bookedProperty = <BookedProperty>[];
      json['booked_property'].forEach((v) {
        bookedProperty!.add(new BookedProperty.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total_page_count'] = this.totalPageCount;
    data['current_page'] = this.currentPage;
    if (this.bookedProperty != null) {
      data['booked_property'] =
          this.bookedProperty!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class BookedProperty {
  int? id;
  int? propertyTo;
  String? propertyRegNo;
  String? status;
  String? frequency;
  String? propertyName;
  String? sellingPrice;
  String? rent;
  PropertyPriorityImage? propertyPriorityImage;
  UserPropertyRelated? userPropertyRelated;
  String? dueDate;

  BookedProperty(
      {this.id,
      this.propertyTo,
      this.propertyRegNo,
      this.status,
      this.frequency,
      this.propertyName,
      this.sellingPrice,
      this.rent,
      this.propertyPriorityImage,
      this.userPropertyRelated,
      this.dueDate});

  BookedProperty.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    propertyTo = json['property_to'];
    propertyRegNo = json['property_reg_no'];
    status = json['status'];
    frequency = json['frequency'];
    propertyName = json['property_name'];
    sellingPrice = json['selling_price'];
    rent = json['rent'];
    propertyPriorityImage = json['property_priority_image'] != null
        ? new PropertyPriorityImage.fromJson(json['property_priority_image'])
        : null;
    userPropertyRelated = json['user_property_related'] != null
        ? new UserPropertyRelated.fromJson(json['user_property_related'])
        : null;
    dueDate = json['due_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['property_to'] = this.propertyTo;
    data['property_reg_no'] = this.propertyRegNo;
    data['status'] = this.status;
    data['frequency'] = this.frequency;
    data['property_name'] = this.propertyName;
    data['selling_price'] = this.sellingPrice;
    data['rent'] = this.rent;
    if (this.propertyPriorityImage != null) {
      data['property_priority_image'] = this.propertyPriorityImage!.toJson();
    }
    if (this.userPropertyRelated != null) {
      data['user_property_related'] = this.userPropertyRelated!.toJson();
    }
    data['due_date'] = this.dueDate;
    return data;
  }
}

class PropertyPriorityImage {
  String? document;
  int? propertyId;

  PropertyPriorityImage({this.document, this.propertyId});

  PropertyPriorityImage.fromJson(Map<String, dynamic> json) {
    document = json['document'];
    propertyId = json['property_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['document'] = this.document;
    data['property_id'] = this.propertyId;
    return data;
  }
}

class UserPropertyRelated {
  int? id;
  int? propertyId;

  UserPropertyRelated({this.id, this.propertyId});

  UserPropertyRelated.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    propertyId = json['property_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['property_id'] = this.propertyId;
    return data;
  }
}
