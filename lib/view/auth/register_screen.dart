import 'package:bangking_app/widgets/custom_button.dart';
import 'package:bangking_app/widgets/custom_textField.dart';
import 'package:bangking_app/widgets/styles.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController name = TextEditingController();
  final TextEditingController bankAccount = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: size.height * 0.2,
            decoration: const BoxDecoration(color: Styles.primaryColor),
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(
                      width: size.width * 0.5,
                      image: const AssetImage('assets/icon/icon_register.png')),
                  const SizedBox(
                    height: 16,
                  ),
                  const Text(
                    'Connect to your bank account',
                    style: Styles.txtTitleSecondry,
                  )
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: size.height * 0.8,
            decoration: const BoxDecoration(color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomTextField(
                      hintText: '',
                      textEditingController: name,
                      label: 'Your Name',
                      obsecure: false),
                  const SizedBox(height: 16),
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
                      textEditingController: password,
                      label: 'Password',
                      obsecure: false),
                  const SizedBox(
                    height: 16,
                  ),
                  const Text(
                    'Use 6 character with a mix of letters,\nnumber & symbols',
                    style: Styles.txtRegulerBlue,
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isChecked,
                        onChanged: (value) {
                          setState(() {
                            isChecked = !isChecked;
                          });
                        },
                      ),
                      const Text(
                        'By signing up, you agree to\nBank\'s Term of Use & Privacy Policy.',
                        style: Styles.txtRegulerBlack,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomButton(
                          navigator: () {},
                          textStyle: Styles.txtRegulerWhite,
                          buttonName: 'SIGN UP',
                          buttonColor: Styles.primaryColor),
                      const Text(
                        'Or',
                        style: Styles.txtRegulerBlack,
                      ),
                      CustomButton(
                          navigator: () {},
                          textStyle: Styles.txtRegulerBlack,
                          buttonName: 'SIGN UP',
                          buttonColor: Colors.white),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Already Sing Up?',
                        style: Styles.txtRegulerBlack,
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text(
                            'Login',
                            style: Styles.txtRegulerActive,
                          ))
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
