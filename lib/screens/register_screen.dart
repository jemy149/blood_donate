import 'package:blood_donation/constants/app_constants.dart';
import 'package:blood_donation/custom_widgets/default_form_field.dart';
import 'package:blood_donation/custom_widgets/default_material_button.dart';
import 'package:blood_donation/custom_widgets/default_text.dart';
import 'package:blood_donation/screens/select_type_of_user_screen.dart';
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
  TextEditingController passwordController = TextEditingController();

  TextEditingController cityController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  TextEditingController addressController = TextEditingController();
  TextEditingController bloodTypeController = TextEditingController();
  List<bool> isSelected = [false, true];
  String date = "";
  DateTime selectedDate = DateTime.now();


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    _selectDate(BuildContext context) async {
      final DateTime? selected = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2010),
        lastDate: DateTime(2025),
      );
      if (selected != null && selected != selectedDate) {
        setState(() {
          selectedDate = selected;
        });
      }
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
                      top: 20.0, bottom: 30.0, start: 30.0, end: 30.0),
                  padding: const EdgeInsetsDirectional.only(
                      top: 10.0, bottom: 20.0, start: 20.0, end: 20.0),
                  child: Column(
                    children: [
                      const DefaultText(text: 'Register', fontSize: 20.0),
                      DefaultFormField(
                          hintText: 'User Name',
                          controller: userNameController,
                          keyboardType: TextInputType.name),
                      DefaultFormField(
                          hintText: 'Full Name',
                          controller: fullNameController,
                          keyboardType: TextInputType.name),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(top: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                ElevatedButton(
                                  onPressed: () {
                                    _selectDate(context);
                                  },
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all<Color>(
                                        AppColors.red),
                                    shadowColor: MaterialStateProperty.all<Color>(
                                        AppColors.red),
                                  ),

                                  child: const Text("Birth Date"),
                                ),

                                Padding(
                                  padding: const EdgeInsetsDirectional.only(top: 15.0),
                                  child: Text(
                                      "${selectedDate.day}/${selectedDate.month}/${selectedDate.year}",),
                                )
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsetsDirectional.only(start: 10.0),
                              child: ToggleButtons(
                                direction: Axis.vertical,
                                disabledBorderColor: AppColors.red,
                                fillColor: AppColors.red,
                                selectedBorderColor: AppColors.red,
                                selectedColor: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                                borderColor: AppColors.red,
                                children: const <Widget>[
                                  DefaultText(text: 'Male', fontSize: 15.0),
                                  DefaultText(text: 'Female', fontSize: 15.0),
                                ],
                                onPressed: (int index) {
                                  setState(() {
                                    for (int buttonIndex = 0;
                                        buttonIndex < isSelected.length;
                                        buttonIndex++) {
                                      if (buttonIndex == index) {
                                        isSelected[buttonIndex] =
                                            !isSelected[buttonIndex];
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

                      DefaultFormField(
                          hintText: 'Blood Type',
                          controller: bloodTypeController,
                          keyboardType: TextInputType.name),
                      DefaultFormField(
                          hintText: 'Email',
                          controller: emailController,
                          keyboardType: TextInputType.name),
                      DefaultFormField(
                          hintText: 'Phone Number',
                          controller: phoneController,
                          keyboardType: TextInputType.name),
                      DefaultFormField(
                          hintText: 'City',
                          controller: cityController,
                          keyboardType: TextInputType.name),
                      DefaultFormField(
                          hintText: 'Address',
                          controller: addressController,
                          keyboardType: TextInputType.name),
                      DefaultFormField(
                          hintText: 'Password',
                          controller: passwordController,
                          keyboardType: TextInputType.name),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(bottom: 25.0),
                        child: DefaultFormField(
                            hintText: 'Confirm Password',
                            controller: confirmPasswordController,
                            keyboardType: TextInputType.name),
                      ),


                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 0,
                right: size.width/3.3,
                child: DefaultMaterialButton(onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SelectTypeOfUserScreen(),));
                }, text: 'Register',backgroundColor: AppColors.red,)),
          ],
        ),
      ),
    ));
  }
}
