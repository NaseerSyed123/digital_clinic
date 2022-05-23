import 'dart:ffi';

import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  late String textFieldText;
  late bool passwordTxt;

  CustomTextField({required this.textFieldText, required this.passwordTxt});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: TextField(

          // style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          obscureText: passwordTxt,
          textInputAction: TextInputAction.next,
          keyboardType: TextInputType.emailAddress,
          cursorColor: Color(0xff5492FD),
          decoration: InputDecoration(
            hintText: textFieldText,
            labelStyle: TextStyle(
              fontFamily: 'Comfortaa',
              color: Colors.black,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.grey, width: 1.0),
              borderRadius: BorderRadius.circular(10.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: Color(0xff5492FD), width: 1.0),
              borderRadius: BorderRadius.circular(10.0),
            ),
          )),
    );
  }
}
