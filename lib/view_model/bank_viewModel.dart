import 'dart:convert';

import 'package:bangking_app/model/history_transaction_model.dart';
import 'package:bangking_app/service/get_history_transaction.dart';
import 'package:flutter/material.dart';

class BankViewModel with ChangeNotifier {
  List<HistoryTransaction> historyTransaction = [];

  Future getHistoryTransaction() async {
    try {
      final response = await BankAPI().getHistory();
      List jsonResponse = response.data;
      historyTransaction = jsonResponse
          .map((data) => HistoryTransaction.fromJson(data))
          .toList();
      notifyListeners();
    } catch (e) {
      debugPrint(e.toString());
    }
    // HistoryTransaction reponseData =
    //     HistoryTransaction.fromJson(response.data[index]).toList();
  }
}
