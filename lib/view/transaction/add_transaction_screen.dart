import 'package:bangking_app/model/list_data.dart';
import 'package:bangking_app/widgets/custom_appBar.dart';
import 'package:bangking_app/widgets/custom_button.dart';
import 'package:bangking_app/widgets/custom_dropDown.dart';
import 'package:bangking_app/widgets/custom_textField.dart';
import 'package:bangking_app/widgets/styles.dart';
import 'package:flutter/material.dart';

class AddTransactionScreen extends StatefulWidget {
  AddTransactionScreen({Key? key}) : super(key: key);

  @override
  State<AddTransactionScreen> createState() => _AddTransactionScreenState();
}

class _AddTransactionScreenState extends State<AddTransactionScreen> {
  TextEditingController fromBankAccount = TextEditingController();
  TextEditingController toBankAccount = TextEditingController();
  TextEditingController amount = TextEditingController();
  TextEditingController messages = TextEditingController();
  ListData listData = ListData();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: customAppbar(context, 'ADD TRANSACTION'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Image(
                width: size.width * 0.7,
                image: const AssetImage('assets/icon/transaction_icon.png'),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            CustomTextField(
                hintText: '',
                textEditingController: fromBankAccount,
                label: 'From Bank Account',
                obsecure: false),
            const SizedBox(
              height: 16,
            ),
            CustomTextField(
                hintText: '',
                textEditingController: toBankAccount,
                label: 'To Bank Account',
                obsecure: false),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                CustomDropDown(listFirst: listData.currency, hint: ''),
                const SizedBox(
                  width: 10,
                ),
                CustomTextField(
                    hintText: '',
                    textEditingController: amount,
                    label: 'Amount',
                    obsecure: false)
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            CustomTextField(
                hintText: '',
                textEditingController: messages,
                label: 'Messages',
                obsecure: false),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomButton(
                    navigator: () {},
                    textStyle: Styles.txtRegulerWhite,
                    buttonName: 'SEND',
                    buttonColor: Styles.primaryColor),
                const Text(
                  'or',
                  style: Styles.txtRegulerBlack,
                ),
                CustomButton(
                    navigator: () {},
                    textStyle: Styles.txtRegulerBlack,
                    buttonName: 'CANCEL',
                    buttonColor: Colors.white)
              ],
            )
          ],
        ),
      ),
    );
  }
}
