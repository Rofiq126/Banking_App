import 'package:bangking_app/model/list_data.dart';
import 'package:bangking_app/widgets/custom_appBar.dart';
import 'package:bangking_app/widgets/custom_button.dart';
import 'package:bangking_app/widgets/custom_dropDown.dart';
import 'package:bangking_app/widgets/custom_textField.dart';
import 'package:bangking_app/widgets/styles.dart';
import 'package:flutter/material.dart';

class AddCardScreen extends StatefulWidget {
  AddCardScreen({Key? key}) : super(key: key);

  @override
  State<AddCardScreen> createState() => _AddCardScreenState();
}

class _AddCardScreenState extends State<AddCardScreen> {
  TextEditingController name = TextEditingController();
  TextEditingController cardNumber = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController phone = TextEditingController();
  ListData tanggal = ListData();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: customAppbar(context, 'ADD CARD'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Image(
                  width: size.width * 0.5,
                  image: const AssetImage('assets/icon/icon_card.png')),
            ),
            const SizedBox(
              height: 50,
            ),
            CustomTextField(
                hintText: '',
                textEditingController: name,
                label: 'Your Name',
                obsecure: false),
            const SizedBox(
              height: 16,
            ),
            CustomTextField(
                hintText: '',
                textEditingController: cardNumber,
                label: 'Card Number',
                obsecure: false),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomDropDown(listFirst: tanggal.date, hint: 'Day'),
                const SizedBox(
                  width: 5,
                ),
                CustomDropDown(listFirst: tanggal.month, hint: 'Month'),
                const SizedBox(
                  width: 5,
                ),
                CustomDropDown(listFirst: tanggal.year, hint: 'Year')
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            CustomTextField(
                hintText: '',
                textEditingController: password,
                label: 'Password',
                obsecure: false),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomDropDown(listFirst: tanggal.phone, hint: 'Phone'),
                const SizedBox(
                  width: 10,
                ),
                CustomTextField(
                    hintText: '',
                    textEditingController: phone,
                    label: 'Phone Number',
                    obsecure: false),
              ],
            ),
            ListTile(
              leading: Text(
                String.fromCharCode(0x2022),
                style: Styles.txtRegulerBlack,
              ),
              title: const Text(
                'Nunc faucibus a pellentesque sit\nporttitor eget dolor morbi non',
                style: Styles.txtRegulerBlack,
              ),
            ),
            ListTile(
              leading: Text(
                String.fromCharCode(0x2022),
                style: Styles.txtRegulerBlack,
              ),
              title: const Text(
                'Nunc faucibus a pellentesque sit\nporttitor eget dolor morbi non',
                style: Styles.txtRegulerBlack,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            CustomButton(
                navigator: () {},
                textStyle: Styles.txtRegulerWhite,
                buttonName: 'LINK CARD',
                buttonColor: Styles.primaryColor)
          ],
        ),
      ),
    );
  }
}
