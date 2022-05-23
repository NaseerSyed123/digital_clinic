import 'package:digital_clinic/util/app_constants.dart';
import 'package:digital_clinic/util/dimensions.dart';
import 'package:digital_clinic/view/screens/doctor_list_screen.dart';
import 'package:digital_clinic/widgets/custom_button.dart';
import 'package:digital_clinic/widgets/custom_textField.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(
            left: Dimensions.PADDING_SIZE_LARGE,
            top: Dimensions.PADDING_SIZE_EXTRA_LARGE,
            right: Dimensions.PADDING_SIZE_LARGE,
            bottom: Dimensions.PADDING_SIZE_DEFAULT),
        child: Stack(children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: Dimensions.PADDING_SIZE_EXTRA_LARGE),
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'Comfortaa',
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Please fill in the information to complete the sign in process',
                  style: TextStyle(
                    fontFamily: 'Comfortaa',
                    fontSize: 18,
                    letterSpacing: 1,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Email Address',
                  style: TextStyle(
                      fontFamily: 'Comfortaa',
                      fontSize: 20,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w800),
                ),
                SizedBox(
                  height: 15,
                ),
                CustomTextField(
                    textFieldText: 'xyz@gmail.com', passwordTxt: false),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Password',
                  style: TextStyle(
                      fontFamily: 'Comfortaa',

                      fontSize: 20,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w800),
                ),
                SizedBox(
                  height: 15,
                ),
                CustomTextField(textFieldText: 'password', passwordTxt: true),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: new Positioned(
              child: new Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DoctorListScreen()));
                    },
                    child: CustomButton(
                        textColor: Colors.white,
                        buttonName: AppConstant.SUBMIT,
                        bgColor: Color(0xff5492FD)),
                  )),
            ),
          )
        ]),
      ),
    );
  }
}
