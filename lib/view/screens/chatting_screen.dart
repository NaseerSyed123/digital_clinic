import 'package:digital_clinic/view/screens/audio_call_screen.dart';
import 'package:flutter/material.dart';

import '../../util/images.dart';

class ChattingScreen extends StatefulWidget {
  const ChattingScreen({Key? key}) : super(key: key);

  @override
  State<ChattingScreen> createState() => _ChattingScreenState();
}

class _ChattingScreenState extends State<ChattingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
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
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  letterSpacing: 1),
                            ),
                            Text(
                              'Offline',
                              style: TextStyle(
                                  fontFamily: 'Comfortaa',
                                  letterSpacing: 1),
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
                          InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            AudioCallScreen()));
                              },
                              child: Image(
                                  image: AssetImage('assets/image/Call.png'))),
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
          Divider(),
          Expanded(
            child: ListView.builder(itemBuilder: (context, index) {
              return index % 2 == 0
                  ? Padding(
                      padding: const EdgeInsets.fromLTRB(10, 10, 100, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image(
                                  width: 30,
                                  height: 30,
                                  image: AssetImage('assets/image/dr_img.png')),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: 200,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: Color(0xff5492FD),
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(5),
                                      bottomRight: Radius.circular(5),
                                      topRight: Radius.circular(5),
                                      topLeft: Radius.circular(5),
                                    )),
                                child: Text(
                                  'Helo Dr! Lorem Ipsum is simply dummy text of the printing and types',
                                  style: TextStyle(color: Colors.white, fontFamily: 'Comfortaa',),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            '9:30 am',
                            style: TextStyle(color: Colors.grey, fontFamily: 'Comfortaa',),
                          )
                        ],
                      ))
                  : Padding(
                      padding: const EdgeInsets.fromLTRB(100, 10, 10, 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Color(0xffF4F4F4),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(5),
                                  bottomRight: Radius.circular(5),
                                  topRight: Radius.circular(5),
                                  topLeft: Radius.circular(5),
                                )),
                            child: Text(
                              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry',
                              style: TextStyle(color: Colors.black, fontFamily: 'Comfortaa',),
                            ),
                          ),
                          Text(
                            '9 AM',
                            style: TextStyle(color: Colors.grey, fontFamily: 'Comfortaa',),
                          )
                        ],
                      ),
                    );
            }),
          ),
          Row(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 10),
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        padding: EdgeInsets.only(left: 10),
                        height: 40,
                        width: 190,
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Enter Your Name',
                            hintStyle: TextStyle(
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
            ],
          )
        ],
      ),
    );
  }
}
