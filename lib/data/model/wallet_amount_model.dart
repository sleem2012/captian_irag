class WalletAmountModel {
  WalletAmountData? data;

  WalletAmountModel({this.data});

  WalletAmountModel.fromJson(Map<String, dynamic> json) {
    data =
        json['data'] != null ? WalletAmountData.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class WalletAmountData {
  String? suspendedBalance;
  String? currentBalance;

  WalletAmountData({
    this.suspendedBalance,
    this.currentBalance,
  });

  WalletAmountData.fromJson(Map<String, dynamic> json) {
    suspendedBalance = json['suspended_balance'].toString();
    currentBalance = json['current_balance'].toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['suspended_balance'] = suspendedBalance;
    data['current_balance'] = currentBalance;
    return data;
  }
}
