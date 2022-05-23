import 'package:digital_clinic/view/screens/receive_call_screen.dart';
import 'package:flutter/material.dart';


class AudioCallScreen extends StatefulWidget {
  const AudioCallScreen({Key? key}) : super(key: key);

  @override
  State<AudioCallScreen> createState() => _AudioCallScreenState();
}

class _AudioCallScreenState extends State<AudioCallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(left: 20, top: 100, right: 20, bottom: 50),
        child: Stack(
          children: [
            Container(
              child: Column(
                children: [
                  Container(
                      child: Center(
                          child: Text(
                    'Muhammad Haseeb',
                    style: TextStyle(
                      fontSize: 25,
                        fontFamily: 'Comfortaa',
                      fontWeight: FontWeight.w900
                    ),
                  ))),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      child: Center(
                          child: Text(
                    'Calling',
                    style: TextStyle(
                      fontFamily: 'Comfortaa',
                      fontSize: 25,

                    ),
                  ))),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Image(
                      image: AssetImage('assets/image/audio_call_img.png'),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: InkWell(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              ReceiveCallScreen()));
                },
                child: Container(
                  child: Image(
                    image: AssetImage('assets/image/call_button.png'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
