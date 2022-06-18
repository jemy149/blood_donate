import 'package:flutter/material.dart';

import '../constants/app_constants.dart';
import 'default_text.dart';

class DefaultOutlinedGenderSelector extends StatefulWidget {
  final String? text;
  bool isChecked;

  DefaultOutlinedGenderSelector(
      {Key? key, required this.text, required this.isChecked})
      : super(key: key);

  @override
  State<DefaultOutlinedGenderSelector> createState() =>
      _DefaultOutlinedGenderSelectorState();
}

class _DefaultOutlinedGenderSelectorState
    extends State<DefaultOutlinedGenderSelector> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          widget.isChecked = !widget.isChecked;
        });
      },
      child: Container(
          padding: const EdgeInsets.all(2),
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: widget.isChecked ? AppColors.red : Colors.white,
              border: Border.all(
                color: AppColors.red,
              ),
              borderRadius: BorderRadius.circular(5)),
          child: DefaultText(
            text: widget.text!,
            style: TextStyle(
                color: widget.isChecked ? Colors.white : Colors.black),
            fontSize: 13,
          )),
    );
  }
}
