import 'package:digital_clinic/view/screens/video_call_screen.dart';
import 'package:flutter/material.dart';

class ReceiveCallScreen extends StatefulWidget {
  const ReceiveCallScreen({Key? key}) : super(key: key);

  @override
  State<ReceiveCallScreen> createState() => _ReceiveCallScreenState();
}

class _ReceiveCallScreenState extends State<ReceiveCallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        fontFamily: 'Comfortaa',
                        fontSize: 25, fontWeight: FontWeight.w900),
                  ))),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      child: Center(
                          child: Text(
                    '00:01',
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
            Padding(
              padding: const EdgeInsets.only(bottom: 50.0),
              child: Positioned(
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => VideoCallScreen()));
                    },
                    child: Container(
                        child: Image(
                      image: AssetImage('assets/image/call_button.png'),
                    )),
                  ),
                ),
              ),
            ),
            Positioned(
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image(image: AssetImage('assets/image/speaker.png')),
                      Image(image: AssetImage('assets/image/speaker.png')),
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
