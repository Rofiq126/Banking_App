import 'package:bangking_app/widgets/styles.dart';
import 'package:flutter/material.dart';

class CustomCircleMenuPayment extends StatefulWidget {
  Color buttonColor;
  String assetPath;
  String text;
  CustomCircleMenuPayment(
      {Key? key,
      required this.buttonColor,
      required this.assetPath,
      required this.text})
      : super(key: key);

  @override
  State<CustomCircleMenuPayment> createState() =>
      _CustomCircleMenuPaymentState();
}

class _CustomCircleMenuPaymentState extends State<CustomCircleMenuPayment> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
              color: widget.buttonColor,
              borderRadius: BorderRadius.circular(100)),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Image(image: AssetImage(widget.assetPath)),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          widget.text,
          style: Styles.txtRegulerBlack,
        )
      ],
    );
  }
}
