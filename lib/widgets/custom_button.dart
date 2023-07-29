import 'package:bangking_app/widgets/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final GestureTapCallback navigator;
  final String buttonName;
  const CustomButton(
      {Key? key, required this.navigator, required this.buttonName})
      : super(key: key);

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Styles.primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8))),
          onPressed: widget.navigator,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              widget.buttonName,
              style: Styles.txtRegulerWhite,
            ),
          )),
    );
  }
}
