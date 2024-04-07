

class FleetTypeModel {
  List<FleetTypeData>? data;

  FleetTypeModel({this.data});

  FleetTypeModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <FleetTypeData>[];
      json['data'].forEach((v) {
        data!.add(FleetTypeData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class FleetTypeData {
  int? id;
  String? name;
  String? seatLayout;
  int? numberDecks;


  FleetTypeData(
      {this.id,
        this.name,
        this.seatLayout,
        this.numberDecks,
  });

  FleetTypeData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    seatLayout = json['seat_layout'];
    numberDecks = json['number_decks'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['seat_layout'] = seatLayout;
    data['number_decks'] = numberDecks;
    return data;
  }
}
