import 'package:flutter/material.dart';

import '../../../widgets/styles.dart';

appBarHistoryTransaction(BuildContext context) {
  return AppBar(
    elevation: 0,
    bottom: TabBar(tabs: [
      Tab(
        child: Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(12), topLeft: Radius.circular(12)),
              color: Styles.blueColor),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'COMPLETE',
              style: Styles.txtRegulerWhite,
            ),
          ),
        ),
      ),
      Tab(
        child: Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(12), topLeft: Radius.circular(12)),
              color: Styles.blackColor),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'IN PROGRESS',
              style: Styles.txtRegulerWhite,
            ),
          ),
        ),
      )
    ]),
    iconTheme: const IconThemeData(color: Colors.white),
    backgroundColor: Styles.primaryColor,
    title: const Text(
      'HISTORY TRANSACTION',
      style: Styles.txtTitleThird,
    ),
    centerTitle: true,
    automaticallyImplyLeading: false,
    leading: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: const Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        )),
  );
}
