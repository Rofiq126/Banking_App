import 'package:bangking_app/view/transaction/component/appBar_history_transaction.dart';
import 'package:bangking_app/view/transaction/history_transaction/complete_transaction_screen.dart';
import 'package:bangking_app/widgets/custom_appBar.dart';
import 'package:bangking_app/widgets/styles.dart';
import 'package:flutter/material.dart';

class HistoryTransactionScreen extends StatefulWidget {
  HistoryTransactionScreen({Key? key}) : super(key: key);

  @override
  State<HistoryTransactionScreen> createState() =>
      _HistoryTransactionScreenState();
}

class _HistoryTransactionScreenState extends State<HistoryTransactionScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: appBarHistoryTransaction(context),
          body: TabBarView(children: [
            CompleteTransactionScreen(),
            const Icon(Icons.person),
          ]),
        ));
  }
}
