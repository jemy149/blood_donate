import 'package:blood_donation/custom_widgets/default_material_button.dart';
import 'package:blood_donation/screens/home_layout.dart';
import 'package:flutter/material.dart';

import '../constants/app_constants.dart';

class SelectTypeOfUserScreen extends StatefulWidget {
  const SelectTypeOfUserScreen({Key? key}) : super(key: key);

  @override
  State<SelectTypeOfUserScreen> createState() => _SelectTypeOfUserScreenState();
}

List<bool> isSelected = [true, false];
Color _color = Colors.black;

class _SelectTypeOfUserScreenState extends State<SelectTypeOfUserScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.red,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset(
              'assets/sign in.png',
              fit: BoxFit.fill,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.only(start: 20, top: 30),
                      child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
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
                      padding: EdgeInsetsDirectional.only(start: 20,bottom: 20),
                      child: Text.rich(TextSpan(children: <InlineSpan>[
                        TextSpan(
                          text: 'Sel',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        TextSpan(
                          text: 'ect ',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.yellowAccent,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        TextSpan(
                          text: 'One',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.yellowAccent,
                              fontSize: 20,
                              fontWeight: FontWeight.w200,
                              color: Colors.white),
                        ),
                      ])),
                    ),
                  ],
                ),

                ToggleButtons(
                  direction: Axis.horizontal,
                  disabledBorderColor: AppColors.red,
                  fillColor: Colors.white,
                  selectedBorderColor: AppColors.red,
                  selectedColor: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  borderColor: Colors.white,
                  children: <Widget>[
                    SizedBox(
                        width: size.width/2.3,
                        child: Column(
                          children: [
                            Image.asset('assets/WHITE BOX.png'),

                             Text.rich( TextSpan(children: <InlineSpan>[
                              TextSpan(
                                text: 'Are you a Donor',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: _color),
                              ),
                            ])),
                          ],
                        )),

                    SizedBox(
                        width: size.width/2.3,
                        child: Column(
                          children: [
                            Image.asset('assets/WHITE BOX1.png'),
                         Text.rich(TextSpan(children: <InlineSpan>[
                          TextSpan(
                            text: 'Requester',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: _color),
                          ),
                        ]))
                          ],
                        )),
                  ],
                  onPressed: (int index) {
                    setState(() {
                      for (int buttonIndex = 0;
                          buttonIndex < isSelected.length;
                          buttonIndex++) {
                        if (buttonIndex == index) {
                          isSelected[buttonIndex] = !isSelected[buttonIndex];
                        } else {
                          isSelected[buttonIndex] = false;
                        }
                      }

                    });
                  },
                  isSelected: isSelected,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: DefaultMaterialButton(onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomeLayout(),));
                  }, text: 'NEXT',backgroundColor: Colors.red,),
                )
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
