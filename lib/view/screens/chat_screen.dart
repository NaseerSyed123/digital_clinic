import 'package:digital_clinic/widgets/custom_textField.dart';
import 'package:flutter/material.dart';

import '../../util/images.dart';
import 'chatting_screen.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 10, top: 30, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: Icon(Icons.arrow_back_ios)),
                            Image(
                                width: 35,
                                height: 35,
                                image: AssetImage(Images.dr_image)),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Yasir Qurban',
                                  style: TextStyle(
                                      fontFamily: 'Comfortaa',
                                      fontWeight: FontWeight.w800,
                                      fontSize: 18,
                                      letterSpacing: 1),
                                ),
                                Text(
                                  'Offline',
                                  style: TextStyle(letterSpacing: 1, fontFamily: 'Comfortaa',),
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, right: 10),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image(
                                  image: AssetImage('assets/image/Call.png')),
                              SizedBox(
                                width: 20,
                              ),
                              Image(image: AssetImage('assets/image/Video.png'))
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Divider()
            ],
          ),
          Positioned(
            bottom: 0,
            child: Container(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
                child: Row(
                  children: [
                    Icon(
                      Icons.add_circle,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Image(image: AssetImage('assets/image/Camera.png')),
                    SizedBox(
                      width: 5,
                    ),
                    Image(image: AssetImage('assets/image/Image.png')),
                    SizedBox(
                      width: 5,
                    ),
                    Image(image: AssetImage('assets/image/Voice.png')),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      padding: EdgeInsets.only(left: 10),
                      height: 40,
                      width: 190,
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter Your Name',hintStyle: TextStyle(
                          fontFamily: 'Comfortaa',
                        ),
                          labelStyle: TextStyle(
                            fontFamily: 'Comfortaa',
                          )

                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ChattingScreen()));
                      },
                      child: Icon(
                        Icons.share_outlined,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
