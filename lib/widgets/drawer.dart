import 'package:bangking_app/view/auth/login_screen.dart';
import 'package:bangking_app/view/home/account_screen.dart';
import 'package:bangking_app/widgets/styles.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatefulWidget {
  CustomDrawer({Key? key}) : super(key: key);

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  int selectedIndex = 0;

  void selected(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: SafeArea(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              selected: selectedIndex == 0,
              leading: const Icon(
                Icons.home,
                color: Styles.primaryColor,
              ),
              title: const Text(
                'Home',
                style: Styles.txtRegulerBlack,
              ),
              onTap: () {},
            ),
            ListTile(
              selected: selectedIndex == 1,
              leading: const Icon(
                Icons.person,
                color: Styles.primaryColor,
              ),
              title: const Text(
                'Account',
                style: Styles.txtRegulerBlack,
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => AccountScreen()));
              },
            ),
            ListTile(
              selected: selectedIndex == 2,
              leading: const Icon(
                Icons.payment,
                color: Styles.primaryColor,
              ),
              title: const Text(
                'Add Card',
                style: Styles.txtRegulerBlack,
              ),
              onTap: () {},
            ),
            ListTile(
              selected: selectedIndex == 3,
              leading: const Icon(
                Icons.money,
                color: Styles.primaryColor,
              ),
              title: const Text(
                'Transaction',
                style: Styles.txtRegulerBlack,
              ),
              onTap: () {},
            ),
            ListTile(
              selected: selectedIndex == 4,
              leading: const Icon(
                Icons.payments_outlined,
                color: Styles.primaryColor,
              ),
              title: const Text(
                'Payment',
                style: Styles.txtRegulerBlack,
              ),
              onTap: () {},
            ),
            ListTile(
              selected: selectedIndex == 5,
              leading: const Icon(
                Icons.currency_exchange,
                color: Styles.primaryColor,
              ),
              title: const Text(
                'Exchange',
                style: Styles.txtRegulerBlack,
              ),
              onTap: () {},
            ),
            ListTile(
              selected: selectedIndex == 6,
              leading: const Icon(
                Icons.exit_to_app,
                color: Styles.primaryColor,
              ),
              title: const Text(
                'Sign Out',
                style: Styles.txtRegulerBlack,
              ),
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (_) => const LoginScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
