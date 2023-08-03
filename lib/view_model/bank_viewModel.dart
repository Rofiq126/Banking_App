import 'dart:convert';

import 'package:bangking_app/model/history_transaction_model.dart';
import 'package:bangking_app/service/get_history_transaction.dart';
import 'package:flutter/material.dart';

class BankViewModel with ChangeNotifier {
  List<HistoryTransaction> historyTransaction = [];

  Future getHistoryTransaction() async {
    int? index;
    final response = await BankAPI().getHistory();

    for (int i = 0; i < response.data.length; i++) {
      index = i;
    }
    List jsonResponse = response.data;
    historyTransaction =
        jsonResponse.map((data) => HistoryTransaction.fromJson(data)).toList();
    notifyListeners();
    // HistoryTransaction reponseData =
    //     HistoryTransaction.fromJson(response.data[index]).toList();
  }
}
