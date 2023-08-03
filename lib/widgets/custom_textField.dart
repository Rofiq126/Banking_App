import 'package:bangking_app/widgets/styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController textEditingController;
  final String hintText;
  final bool obsecure;

  final String label;
  const CustomTextField(
      {Key? key,
      required this.hintText,
      required this.textEditingController,
      required this.label,
      required this.obsecure})
      : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: widget.textEditingController,
        obscureText: widget.obsecure,
        textAlign: TextAlign.start,
        style: Styles.txtRegulerBlack,
        decoration: InputDecoration(
          label: Text(widget.label),
          labelStyle: const TextStyle(fontSize: 12, fontFamily: 'Poppins'),
          fillColor: Colors.white,
          filled: true,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              borderSide: BorderSide(color: Styles.blackColor, width: 2.0)),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8.0),
            ),
            borderSide: BorderSide(
              color: Styles.blackColor,
              width: 2.0,
            ),
          ),
        ));
  }
}
