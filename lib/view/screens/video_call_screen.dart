import 'package:digital_clinic/view/screens/doctor_list_screen.dart';
import 'package:flutter/material.dart';

class VideoCallScreen extends StatefulWidget {
  const VideoCallScreen({Key? key}) : super(key: key);

  @override
  State<VideoCallScreen> createState() => _VideoCallScreenState();
}

class _VideoCallScreenState extends State<VideoCallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
       body: Container(
         decoration: BoxDecoration(
           image: DecorationImage(
             image: AssetImage('assets/image/Video_call.png'),
                 fit: BoxFit.cover
           )
         ),
         child: Padding(
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
                                   fontWeight: FontWeight.w900,
                                   color: Colors.white
                               ),
                             ))),
                     SizedBox(
                       height: 20,
                     ),
                     Container(
                         child: Center(
                             child: Text(
                               'Dailing',
                               style: TextStyle(
                                   fontFamily: 'Comfortaa',
                                 fontSize: 25,
                                 color: Colors.grey

                               ),
                             ))),

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
                                 DoctorListScreen()));
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
       ),
    );
  }
}
