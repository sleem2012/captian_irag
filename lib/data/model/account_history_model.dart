class AccountHistoryModel {
  String? status;
  AccountData? data;

  AccountHistoryModel({this.status, this.data});

  AccountHistoryModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data = json['data'] != null ? new AccountData.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class AccountData {
  List<InnerAccountData>? innerData;

  AccountData({this.innerData});

  AccountData.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      innerData = <InnerAccountData>[];
      json['data'].forEach((v) {
        innerData!.add(new InnerAccountData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.innerData != null) {
      data['data'] = this.innerData!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class InnerAccountData {
  int? id;
  String? name;
  String? date;
  int? bookedCount;
  int? price;

  InnerAccountData({this.id, this.name, this.date, this.bookedCount, this.price});

  InnerAccountData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    date = json['date'];
    bookedCount = json['booked_count'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['date'] = this.date;
    data['booked_count'] = this.bookedCount;
    data['price'] = this.price;
    return data;
  }
}
