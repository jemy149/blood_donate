import 'package:blood_donation/constants/app_constants.dart';
import 'package:blood_donation/screens/register_screen.dart';
import 'package:flutter/material.dart';

import '../custom_views/custome_choose_account_view.dart';

class ChooseAccountScreen extends StatelessWidget {
  const ChooseAccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: AppColors.red,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset('assets/sign in.png',fit: BoxFit.fitWidth,),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.only(start: 20, top: 30),
                      child: InkWell(
                          onTap: () {},
                          child: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          )),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/logo.png',
                      height: 180,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsetsDirectional.only(start: 20),
                      child: Text.rich(TextSpan(
                          children: <InlineSpan>[
                            TextSpan(
                              text: 'Choose ',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            TextSpan(
                              text: 'One',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w200,
                                  color: Colors.white),
                            ),
                          ])),
                    ),
                  ],
                ),
                CustomChooseAccountView(buttonText: 'Person',image: 'assets/person pic.png',onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context) =>  RegisterScreen(),));
                },),
                CustomChooseAccountView(buttonText: 'Person',image: 'assets/Hospital pic.png',onTap: (){},),

              ],
            ),
          ],
        ),
      ),
    ));
  }
}
