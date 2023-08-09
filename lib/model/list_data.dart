import 'package:bangking_app/widgets/styles.dart';
import 'package:flutter/material.dart';

class Menu {
  String pathIcon;
  String name;
  Color color;

  Menu({required this.pathIcon, required this.name, required this.color});
}

class ListData {
  List date = <String>['1', '2', '3', '4', '5'];

  List month = <String>['Januari', 'Februari', 'Maret', 'April', 'Mei'];

  List year = <String>['2000', '2001', '2002', '2003', '2004', '2005'];

  List phone = <String>['+62'];

  List currency = <String>['IDR', '\$'];

  List<Menu> dataMenu = [
    Menu(
        pathIcon: 'assets/icon/water_icon.png',
        name: 'Water',
        color: Styles.secodryColor),
    Menu(
        pathIcon: 'assets/icon/lamp_icon.png',
        name: 'Electricity',
        color: Styles.orangeColor),
    Menu(
        pathIcon: 'assets/icon/gas_icon.png',
        name: 'Gas',
        color: Styles.redColor),
    Menu(
        pathIcon: 'assets/icon/shopping_icon.png',
        name: 'Shopping',
        color: Styles.pinkColor),
    Menu(
        pathIcon: 'assets/icon/phone_icon.png',
        name: 'Phone',
        color: Styles.primaryColor),
    Menu(
        pathIcon: 'assets/icon/credit_icon.png',
        name: 'Credit Card',
        color: Styles.greenColor),
    Menu(
        pathIcon: 'assets/icon/insurance_icon.png',
        name: 'Insurance',
        color: Styles.tealColor),
    Menu(
        pathIcon: 'assets/icon/mortage_icon.png',
        name: 'Mortgage',
        color: Styles.blueColor),
    Menu(
        pathIcon: 'assets/icon/other_icon.png',
        name: 'Other Bills',
        color: Styles.blackColor),
  ];
}
