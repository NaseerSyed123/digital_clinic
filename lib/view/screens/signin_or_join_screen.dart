import 'package:digital_clinic/util/dimensions.dart';
import 'package:digital_clinic/util/images.dart';
import 'package:digital_clinic/view/screens/sign_in.dart';
import 'package:digital_clinic/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../../util/styles.dart';

class SigninOrJoinScreen extends StatefulWidget {
  const SigninOrJoinScreen({Key? key}) : super(key: key);

  @override
  State<SigninOrJoinScreen> createState() => _SigninOrJoinScreenState();
}

class _SigninOrJoinScreenState extends State<SigninOrJoinScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        color: Colors.white,
        height: double.maxFinite,
        child: Stack(
          //alignment:new Alignment(x, y)
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 70.0),
              child: Positioned(
                child: new Align(
                    alignment: FractionalOffset.topCenter,
                    child: Image(
                      image: AssetImage(Images.remort_service),
                    )),
              ),
            ),
            Positioned(
              top: 300,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Text('TeleHealth Services For Remote Areas',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Comfortaa',
                          fontWeight: FontWeight.w800,
                          fontSize: 24,
                          letterSpacing: 1)),
                ),
              ),
            ),
            Positioned(
              top: 360,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Text('Early Protection For Family Health',
                      style: TextStyle(
                          fontFamily: 'Comfortaa',
                          color: Colors.grey, fontSize: 14, letterSpacing: 1)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 85.0, left: 20, right: 20),
              child: new Positioned(
                child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignIn()));
                        },
                        child: CustomButton(
                            textColor: Colors.white,
                            buttonName: 'Sign in',

                            bgColor: Color(0xff5492FD)))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15.0, left: 20, right: 20),
              child: new Positioned(
                child: new Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: CustomButton(
                        textColor: Color(0xff5492FD),
                        buttonName: 'Join Now',
                        bgColor: Colors.white)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
