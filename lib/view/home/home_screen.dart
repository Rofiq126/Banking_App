import 'package:bangking_app/widgets/custom_button.dart';
import 'package:bangking_app/widgets/drawer.dart';
import 'package:bangking_app/widgets/styles.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String imageProfile =
      'https://i.pinimg.com/564x/f4/b8/08/f4b808ad2e26166582ec51c7be71ae24.jpg';
  String imageProfileEmpty =
      'https://i.pinimg.com/564x/29/b8/d2/29b8d250380266eb04be05fe21ef19a7.jpg';
  int selectedIndex = 0;
  void selected() {}
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Styles.primaryColor,
      ),
      drawer: CustomDrawer(),
      body: Column(
        children: [
          Container(
            width: size.width,
            height: size.height * 0.5,
            decoration: const BoxDecoration(color: Styles.primaryColor),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      border: Border.all(width: 2, color: Colors.white),
                      borderRadius: BorderRadius.circular(100),
                      image: DecorationImage(
                          image: imageProfile.isNotEmpty
                              ? NetworkImage(imageProfile)
                              : NetworkImage(imageProfile))),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'YOUR NAME',
                  style: Styles.txtTitleThird,
                ),
                const Text(
                  'your-email@gmail.com',
                  style: Styles.txtRegulerWhite,
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  width: size.width * 0.7,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'BALANCE',
                          style: Styles.txtRegulerBlueSecond,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          '\$ 4, 180.20',
                          style: Styles.txtRegulerBlueBig,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        CustomButton(
                            navigator: () {},
                            textStyle: Styles.txtRegulerWhite,
                            buttonName: 'TRANSFER',
                            buttonColor: Styles.primaryColor)
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                width: size.width,
                decoration: const BoxDecoration(color: Colors.white),
                child: SafeArea(
                  child: Column(
                    children: [
                      const Text(
                        'LATER TRANSACTION',
                        style: Styles.txtRegulerBlueSecond,
                      ),
                      ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: 10,
                          itemBuilder: (BuildContext context, index) {
                            return ListTile(
                              leading: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: Styles.primaryColor,
                                    borderRadius: BorderRadius.circular(100)),
                              ),
                              title: const Text(
                                'Lorem Opsium Compamy',
                                style: Styles.txtRegulerBlack,
                              ),
                              subtitle: const Text(
                                'Received Payment',
                                style: Styles.txtRegulerBlackSmall,
                              ),
                              trailing: const Text(
                                '- 2,030.80',
                                style: Styles.txtRegulerBlack,
                              ),
                            );
                          })
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
