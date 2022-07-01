import 'package:flutter/material.dart';

import '../constants/app_constants.dart';
class DefaultMaterialButton extends StatelessWidget {
   DefaultMaterialButton({Key? key, required this.onTap, required this.text, this.backgroundColor}) : super(key: key);
  Color? backgroundColor = AppColors.red ;
  final Function() onTap;
  final String text;
  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: onTap,
      child: Card(
        color:backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),

        ),
        child: Padding(

          padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 15),

          child: Text(text,style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white),),
        ),
      ),
    );
  }
}
