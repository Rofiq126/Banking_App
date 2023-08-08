import 'package:bangking_app/widgets/styles.dart';
import 'package:flutter/material.dart';

class CustomDropDown extends StatefulWidget {
  List listFirst;
  String hint;
  CustomDropDown({Key? key, required this.listFirst, required this.hint})
      : super(key: key);

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.loose,
      flex: 0,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 10),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(width: 2, color: Styles.blackColor)),
        child: DropdownButton(
            borderRadius: BorderRadius.circular(8),
            isDense: true,
            alignment: Alignment.center,
            elevation: 0,
            value: widget.listFirst.first,
            items: widget.listFirst.map<DropdownMenuItem>((value) {
              return DropdownMenuItem(
                  value: value,
                  child: Text(value, style: Styles.txtRegulerBlack));
            }).toList(),
            hint: Text(
              widget.hint,
              style: Styles.txtRegulerBlack,
            ),
            icon: const Icon(Icons.keyboard_arrow_down),
            onChanged: (value) {
              setState(() {
                widget.listFirst = value;
              });
            }),
      ),
    );
  }
}
