import 'package:digital_clinic/view/screens/LogIn/sign_in.dart';
import 'package:flutter/material.dart';

import '../../util/dimensions.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_textField.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
            left: Dimensions.PADDING_SIZE_LARGE,
            top: Dimensions.PADDING_SIZE_EXTRA_LARGE,
            right: Dimensions.PADDING_SIZE_LARGE,
            bottom: Dimensions.PADDING_SIZE_DEFAULT),
        child: Stack(
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: Dimensions.PADDING_SIZE_EXTRA_LARGE),
                    child: Text(
                      'Register',
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
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Name',
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
                    textFieldText: 'Enter your name: ',
                    passwordTxt: false,
                    errortext: '',
                    onChanged: (String value) {},
                  ),
                  Text(
                    'Email:',
                    style: TextStyle(
                        fontFamily: 'Comfortaa',
                        fontSize: 20,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomTextField(
                    textFieldText: 'Enter Email address: ',
                    passwordTxt: false,
                    errortext: '',
                    onChanged: (String value) {},
                  ),
                  Text(
                    'Password:',
                    style: TextStyle(
                        fontFamily: 'Comfortaa',
                        fontSize: 20,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomTextField(
                    textFieldText: 'Create Password: ',
                    passwordTxt: true,
                    errortext: '',
                    onChanged: (String value) {},
                  ),
                  Text(
                    'CNIC #:',
                    style: TextStyle(
                        fontFamily: 'Comfortaa',
                        fontSize: 20,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomTextField(
                    textFieldText: 'Enter CNIC #: ',
                    passwordTxt: false,
                    errortext: '',
                    onChanged: (String value) {},
                  ),
                  Text(
                    'Clinic:',
                    style: TextStyle(
                        fontFamily: 'Comfortaa',
                        fontSize: 20,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomTextField(
                    textFieldText: 'Clinic Name: ',
                    passwordTxt: false,
                    errortext: '',
                    onChanged: (String value) {},
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: Positioned(
                      child: Align(
                        alignment: FractionalOffset.bottomCenter,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return SignIn();
                            }));
                          },
                          child: CustomButton(
                              textColor: Colors.white,
                              buttonName: 'Signup',
                              bgColor: Color(0xff5492FD)),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
