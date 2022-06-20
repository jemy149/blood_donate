import 'package:blood_donation/constants/app_constants.dart';
import 'package:blood_donation/custom_widgets/default_form_field.dart';
import 'package:blood_donation/custom_widgets/default_text.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);





  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController userNameController = TextEditingController();

  TextEditingController fullNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  TextEditingController cityController = TextEditingController();

  TextEditingController addressController = TextEditingController();
  List<bool> isSelected = [false,false];
  String date = "";
  DateTime selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    _selectDate(BuildContext context) async {
      final DateTime? selected = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2010),
        lastDate: DateTime(2025),
      );
      if (selected != null && selected != selectedDate)
        setState(() {
          selectedDate = selected;
        });
    }
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
                Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25.0)),
                  margin: const EdgeInsetsDirectional.only(
                      top: 20.0, bottom: 20.0, start: 30.0, end: 30.0),
                  padding: const EdgeInsetsDirectional.only(
                      top: 10.0, bottom: 20.0, start: 20.0, end: 20.0),
                  child: Column(
                    children: [
                      const DefaultText(text: 'Register',fontSize: 20.0),
                      CustomFormField(
                          hintText: 'User Name',
                          controller: userNameController,
                          keyboardType: TextInputType.name),
                      CustomFormField(
                          hintText: 'Full Name',
                          controller: userNameController,
                          keyboardType: TextInputType.name),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(top: 10.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const DefaultText(text: 'Gender',fontSize: 20.0),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(start: 10.0),
                              child: ToggleButtons(
                                disabledBorderColor: AppColors.red,
                                fillColor: AppColors.red,
                                selectedBorderColor: AppColors.red,
                                selectedColor: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                borderColor: AppColors.red,
                                children: const <Widget>[
                                  DefaultText(text: 'Male',fontSize: 15.0),
                                  DefaultText(text: 'Female',fontSize: 15.0),
                                ],
                                onPressed: (int index) {
                                  setState(() {
                                    for (int buttonIndex = 0; buttonIndex < isSelected.length; buttonIndex++) {
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
                            ),
                          ],
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          ElevatedButton(
                            onPressed: () {
                              _selectDate(context);
                            },
                            child: const Text("Choose Date"),
                          ),
                          Text("${selectedDate.day}/${selectedDate.month}/${selectedDate.year}")
                        ],
                      ),
                       CustomFormField(
                          hintText: 'Email',
                          controller: userNameController,
                          keyboardType: TextInputType.name),
                      CustomFormField(
                          hintText: 'Phone Number',
                          controller: userNameController,
                          keyboardType: TextInputType.name),
                      CustomFormField(
                          hintText: 'City',
                          controller: userNameController,
                          keyboardType: TextInputType.name),
                      CustomFormField(
                          hintText: 'Address',
                          controller: userNameController,
                          keyboardType: TextInputType.name),
                      CustomFormField(
                          hintText: 'Password',
                          controller: userNameController,
                          keyboardType: TextInputType.name),
                      CustomFormField(
                          hintText: 'Confirm Password',
                          controller: userNameController,
                          keyboardType: TextInputType.name),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
