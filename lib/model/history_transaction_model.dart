class HistoryTransaction {
  late String createdAt;
  late String name;
  late String profile;
  late String amount;
  late String type;
  late String id;

  HistoryTransaction(
      {required this.createdAt,
      required this.name,
      required this.profile,
      required this.amount,
      required this.type,
      required this.id});

  HistoryTransaction.fromJson(Map<String, dynamic> json) {
    createdAt = json['createdAt'];
    name = json['name'];
    profile = json['profile'];
    amount = json['amount'];
    type = json['type'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['createdAt'] = createdAt;
    data['name'] = name;
    data['profile'] = profile;
    data['amount'] = amount;
    data['type'] = type;
    data['id'] = id;
    return data;
  }
}
