import 'package:bangking_app/view/auth/register_screen.dart';
import 'package:bangking_app/widgets/custom_button.dart';
import 'package:bangking_app/widgets/custom_textField.dart';
import 'package:bangking_app/widgets/styles.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController email = TextEditingController();

  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: size.height * 0.50,
            decoration: const BoxDecoration(color: Styles.primaryColor),
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'WELCOME!',
                    style: Styles.txtTitle,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Image(
                      width: size.width * 0.5,
                      image: const AssetImage('assets/icon/icon_bank.png'))
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: size.height * 0.50,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomTextField(
                      hintText: '',
                      textEditingController: email,
                      label: 'Username or Email',
                      obsecure: false),
                  const SizedBox(
                    height: 16,
                  ),
                  CustomTextField(
                      hintText: '',
                      textEditingController: password,
                      label: 'Password',
                      obsecure: true),
                  const SizedBox(
                    height: 16,
                  ),
                  CustomButton(
                    navigator: () {},
                    buttonName: 'Login',
                    textStyle: Styles.txtRegulerWhite,
                    buttonColor: Styles.primaryColor,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Forgot Password?',
                        style: Styles.txtRegulerActive,
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        'New To Bank Apps?',
                        style: Styles.txtRegulerBlack,
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => RegisterScreen()));
                          },
                          child: const Text(
                            'Sign Up',
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
    ));
  }
}
