import 'package:bangking_app/widgets/styles.dart';
import 'package:flutter/material.dart';

customAppbar(BuildContext context, String title) {
  return AppBar(
    elevation: 0,
    iconTheme: const IconThemeData(color: Colors.white),
    backgroundColor: Styles.primaryColor,
    title: Text(
      title,
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
