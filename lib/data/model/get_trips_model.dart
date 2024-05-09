class GetTripsModel {
  String? status;
  TripsData? data;
  String? message;

  GetTripsModel({this.status, this.data, this.message});

  GetTripsModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data = json['data'] != null ? new TripsData.fromJson(json['data']) : null;
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

class TripsData {
  List<InnerTripsData>? innerData;

  TripsData({this.innerData});

  TripsData.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      innerData = <InnerTripsData>[];
      json['data'].forEach((v) {
        innerData!.add(new InnerTripsData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.innerData != null) {
      data['inner_data'] = this.innerData!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class InnerTripsData {
  int? id;
  String? date;
  String? time;
  String? name;
  List<Tickets>? tickets;

  InnerTripsData({this.id, this.date, this.time, this.name, this.tickets});

  InnerTripsData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    date = json['date'];
    time = json['time'];
    name = json['name'];
    if (json['tickets'] != null) {
      tickets = <Tickets>[];
      json['tickets'].forEach((v) {
        tickets!.add(new Tickets.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['date'] = this.date;
    data['time'] = this.time;
    data['name'] = this.name;
    if (this.tickets != null) {
      data['tickets'] = this.tickets!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Tickets {
  int? id;
  String? userName;
  String? pnrNumber;
  String? address;
  String? goDate;
  String? backDate;

  Tickets(
      {this.id,
        this.userName,
        this.pnrNumber,
        this.address,
        this.goDate,
        this.backDate});

  Tickets.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userName = json['user_name'];
    pnrNumber = json['pnr_number'];
    address = json['address'];
    goDate = json['go_date'];
    backDate = json['back_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_name'] = this.userName;
    data['pnr_number'] = this.pnrNumber;
    data['address'] = this.address;
    data['go_date'] = this.goDate;
    data['back_date'] = this.backDate;
    return data;
  }
}
