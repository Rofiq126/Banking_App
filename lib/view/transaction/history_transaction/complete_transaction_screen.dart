import 'package:bangking_app/view_model/bank_viewModel.dart';
import 'package:bangking_app/widgets/styles.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CompleteTransactionScreen extends StatefulWidget {
  CompleteTransactionScreen({Key? key}) : super(key: key);

  @override
  State<CompleteTransactionScreen> createState() =>
      _CompleteTransactionScreenState();
}

class _CompleteTransactionScreenState extends State<CompleteTransactionScreen> {
  @override
  Widget build(BuildContext context) {
    var viewModel = Provider.of<BankViewModel>(context, listen: false);
    return ListView.builder(
        itemCount: viewModel.historyTransaction.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: SizedBox(
              height: 40,
              width: 40,
              child: CircleAvatar(
                backgroundImage:
                    NetworkImage(viewModel.historyTransaction[index].profile),
              ),
            ),
            title: Text(
              viewModel.historyTransaction[index].name,
              style: Styles.txtRegulerBlack,
            ),
            subtitle: Text(
              viewModel.historyTransaction[index].type,
              style: Styles.txtRegulerBlackSmall,
            ),
            trailing: Text(
              '- \$ ${viewModel.historyTransaction[index].amount}',
              style: Styles.txtRegulerBlack,
            ),
          );
        });
  }
}
