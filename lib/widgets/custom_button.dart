import 'package:bangking_app/widgets/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final GestureTapCallback navigator;
  final String buttonName;
  final Color buttonColor;
  final TextStyle textStyle;
  const CustomButton(
      {Key? key,
      required this.navigator,
      required this.textStyle,
      required this.buttonName,
      required this.buttonColor})
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
              backgroundColor: widget.buttonColor,
              shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 2, color: Styles.primaryColor),
                  borderRadius: BorderRadius.circular(8))),
          onPressed: widget.navigator,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              widget.buttonName,
              style: widget.textStyle,
            ),
          )),
    );
  }
}
