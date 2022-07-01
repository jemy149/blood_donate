import 'package:flutter/material.dart';

class DefaultFormField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final TextInputType keyboardType;

  const DefaultFormField({
    Key? key,
    required this.hintText,
    required this.controller,
    required this.keyboardType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: hintText,
      ),
    );
  }
}
