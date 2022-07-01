import 'package:blood_donation/constants/app_constants.dart';
import 'package:blood_donation/custom_widgets/default_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);

  final TextEditingController bankNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.red,
      body: ListView(
        children: [
          Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: size.width / 1.5,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(100),
                            bottomRight: Radius.circular(100))),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:  [
                              InkWell(
                                  onTap: (){Navigator.pop(context);},
                                  child: const Icon(Icons.arrow_back_ios_rounded)),
                              const Text.rich(
                                TextSpan(children: <InlineSpan>[
                                  TextSpan(
                                    text: 'P',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'rofi',
                                    style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      decorationColor: Colors.amber,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'le',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ]),
                              ),
                              InkWell(
                                  onTap: (){},
                                  child: const Icon(Icons.menu)),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                backgroundColor: AppColors.red,
                                radius: size.width/7,
                                child: Center(
                                  child: Column(
                                    children: const [
                                      DefaultText(text: '66',fontSize: 40,),
                                      DefaultText(text: 'Donor',fontSize: 20,style: TextStyle(fontWeight: FontWeight.bold)),
                                      DefaultText(text: 'has been'),
                                      DefaultText(text: 'shared'),
                                    ],
                                  ),
                                ),
                              ),
                              CircleAvatar(
                                backgroundColor: AppColors.red,
                                radius: size.width/7,
                                child: Center(
                                  child: Column(
                                    children: const [
                                      DefaultText(text: '66',fontSize: 40,),
                                      DefaultText(text: 'Requester',fontSize: 20,style: TextStyle(fontWeight: FontWeight.bold)),
                                      DefaultText(text: 'has been'),
                                      DefaultText(text: 'helped'),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.only(top: 20, start: 20, end: 20),
                    child: Container(
                      clipBehavior: Clip.antiAlias,
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(70),
                              topLeft: Radius.circular(70))),
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(15.0),
                            child: DefaultText(
                              text: 'Bank Name',
                              fontSize: 20,
                            ),
                          ),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:  [
                                  const Padding(
                                    padding: EdgeInsetsDirectional.only(top: 15.0),
                                    child: DefaultText(
                                      text: 'Bank Name',
                                      fontSize: 15,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.only(top: 10.0,bottom: 20),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children:  [
                                        const DefaultText(
                                            text: 'Name',
                                            fontSize: 20,
                                            style: TextStyle(
                                                decoration: TextDecoration.underline,
                                                decorationColor: Colors.black)),
                                        Container(
                                          height: 1,
                                          color: Colors.grey,
                                          width: size.width/1.8,
                                        )
                                      ],
                                    ),
                                  ),
                                  const Padding(
                                    padding: const EdgeInsetsDirectional.only(top: 15.0),
                                    child: const DefaultText(
                                      text: 'Email',
                                      fontSize: 15,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.only(top: 10.0,bottom: 20),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children:  [
                                        const DefaultText(
                                            text: 'Name',
                                            fontSize: 20,
                                            style: TextStyle(
                                                decoration: TextDecoration.underline,
                                                decorationColor: Colors.black)),
                                        Container(
                                          height: 1,
                                          color: Colors.grey,
                                          width: size.width/1.8,
                                        )
                                      ],
                                    ),
                                  ),
                                  const Padding(
                                    padding: const EdgeInsetsDirectional.only(top: 15.0),
                                    child: const DefaultText(
                                      text: 'Phone Number',
                                      fontSize: 15,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.only(top: 10.0,bottom: 20),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children:  [
                                        const DefaultText(
                                            text: 'Name',
                                            fontSize: 20,
                                            style: TextStyle(
                                                decoration: TextDecoration.underline,
                                                decorationColor: Colors.black)),
                                        Container(
                                          height: 1,
                                          color: Colors.grey,
                                          width: size.width/1.8,
                                        )
                                      ],
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsetsDirectional.only(top: 15.0),
                                    child: DefaultText(
                                      text: 'City',
                                      fontSize: 15,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.only(top: 10.0,bottom: 20),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children:  [
                                        const DefaultText(
                                            text: 'Name',
                                            fontSize: 20,
                                            style: TextStyle(
                                                decoration: TextDecoration.underline,
                                                decorationColor: Colors.black)),
                                        Container(
                                          height: 1,
                                          color: Colors.grey,
                                          width: size.width/1.8,
                                        )
                                      ],
                                    ),
                                  ),
                                  const Padding(
                                    padding: const EdgeInsetsDirectional.only(top: 15.0),
                                    child: DefaultText(
                                      text: 'Address',
                                      fontSize: 15,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.only(top: 10.0,bottom: 20),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children:  [
                                        const DefaultText(
                                            text: 'Name',
                                            fontSize: 20,
                                            style: TextStyle(
                                                decoration: TextDecoration.underline,
                                                decorationColor: Colors.black)),
                                        Container(
                                          height: 1,
                                          color: Colors.grey,
                                          width: size.width/1.8,
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(top: size.height/5.1),
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CircleAvatar(
                        radius: 70,
                          backgroundColor: AppColors.red,
                          child: const CircleAvatar(radius:68,backgroundColor: Colors.white,)),
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: AppColors.red,
                        child: const Icon(Icons.person_add_alt_outlined),
                      ),

                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    ));
  }
}
