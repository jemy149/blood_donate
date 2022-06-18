import 'package:blood_donation/constants/app_constants.dart';
import 'package:flutter/material.dart';

class CustomChooseAccountView extends StatelessWidget {
  final String buttonText;
  final String image;
  final Function() onTap;
  const CustomChooseAccountView({Key? key,required this.buttonText, required this.image,required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
            height: 275,
            child: Image.asset(image)),
        Positioned(
          left: 5,
          right: 5,
          bottom: 5,
          child: Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: onTap,
                child: Card(color:AppColors.red,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),

                  ),
                  child: Padding(

                    padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 15),

                    child: Text(buttonText,style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

}
