import 'package:bangking_app/widgets/custom_appBar.dart';
import 'package:bangking_app/widgets/custom_button.dart';
import 'package:bangking_app/widgets/custom_listTile.dart';
import 'package:bangking_app/widgets/custom_textField.dart';
import 'package:bangking_app/widgets/styles.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatefulWidget {
  AccountScreen({Key? key}) : super(key: key);

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  TextEditingController name = TextEditingController();
  TextEditingController bankAccount = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  TextEditingController address = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: customAppbar(context, 'ACCOUNT'),
      body: Container(
        width: size.width,
        height: size.height,
        decoration: const BoxDecoration(color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                    color: Styles.primaryColor,
                    image: const DecorationImage(
                        image: NetworkImage(
                            'https://i.pinimg.com/564x/f4/b8/08/f4b808ad2e26166582ec51c7be71ae24.jpg')),
                    border: Border.all(width: 3, color: Styles.primaryColor),
                    borderRadius: BorderRadius.circular(100)),
              ),
              const SizedBox(
                height: 25,
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
                  textEditingController: bankAccount,
                  label: 'Bank Account',
                  obsecure: false),
              const SizedBox(
                height: 16,
              ),
              CustomTextField(
                  hintText: '',
                  textEditingController: email,
                  label: 'Email',
                  obsecure: false),
              const SizedBox(
                height: 16,
              ),
              CustomTextField(
                  hintText: '',
                  textEditingController: phoneNumber,
                  label: 'Phone Number',
                  obsecure: false),
              const SizedBox(
                height: 16,
              ),
              CustomTextField(
                  hintText: '',
                  textEditingController: address,
                  label: 'Your Address',
                  obsecure: false),
              const SizedBox(
                height: 16,
              ),
              CustomTextField(
                  hintText: '',
                  textEditingController: password,
                  label: 'Password',
                  obsecure: false),
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
                height: 16,
              ),
              CustomButton(
                  navigator: () {},
                  textStyle: Styles.txtRegulerWhite,
                  buttonName: 'SAVE CHANGES',
                  buttonColor: Styles.primaryColor),
            ],
          ),
        ),
      ),
    );
  }
}
