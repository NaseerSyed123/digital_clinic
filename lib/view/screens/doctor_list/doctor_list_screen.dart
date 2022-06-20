
import 'package:digital_clinic/util/app_constants.dart';
import 'package:digital_clinic/view/screens/chat_screen.dart';
import 'package:digital_clinic/view/screens/doctor_list/DoctorListModel.dart';
import 'package:digital_clinic/view/screens/doctor_list/doctorListManager.dart';
import 'package:digital_clinic/widgets/chat_counter.dart';
import 'package:digital_clinic/widgets/custom_button.dart';
import 'package:digital_clinic/widgets/online_status.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../AppLayer/Provider.dart';
import '../../../util/dimensions.dart';
import 'package:digital_clinic/util/images.dart';


class DoctorListScreen extends StatefulWidget {
  const DoctorListScreen({Key? key}) : super(key: key);

  @override
  State<DoctorListScreen> createState() => _DoctorListScreenState();
}

class _DoctorListScreenState extends State<DoctorListScreen> {
  @override
  Widget build(BuildContext context) {

  DoctorListManager manager = Provider.of(context).fetch(DoctorListManager());
   // CourseManager manager = Provider.of(context).fetch(CourseManager());

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
          padding: EdgeInsets.only(left: 10, top: 5, right: 10, bottom: 10),
          child:StreamBuilder<List<DoctorListModel>>(
              stream: manager.mainList,
              builder: (context, snapshot) {
                print("Outside snpshot");
                if (snapshot.hasData) {
                  print("inside snpshot");

                    List<DoctorListModel>? _catList = snapshot.data;

                  DoctorListModel drList = _catList![0];
                  return ListView.builder(
                      itemCount: drList.data.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 3.0, bottom: 5),
                          child: Card(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              padding: EdgeInsets.symmetric(
                                  horizontal: Dimensions.PADDING_SIZE_LARGE,
                                  vertical: Dimensions.PADDING_SIZE_LARGE),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                width: 80,
                                                child: Stack(children: [
                                                  Image(
                                                      width: 75,
                                                      height: 75,
                                                      image: AssetImage(
                                                          drList.data[index].image)),
                                                  Align(
                                                      alignment: Alignment.topRight,
                                                      child: OnlineStatus())
                                                ]),
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Container(
                                                width: 160,
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      drList.data[index].name,
                                                      style: TextStyle(
                                                        fontFamily: 'Comfortaa',
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 18,
                                                      ),
                                                    ),
                                                    Text(
                                                      drList.data[index].description,
                                                      style: TextStyle(
                                                          fontFamily: 'Comfortaa',
                                                          fontWeight: FontWeight.w800,
                                                          letterSpacing: 1,
                                                          color: Color(0xff5492FD)),
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Container(
                                            width: 40,
                                            height: 40,
                                            child: Stack(children: [
                                              Container(
                                                  width: 40,
                                                  height: 40,
                                                  decoration: BoxDecoration(
                                                      color: Color(0xffE8F0FF),
                                                      borderRadius: BorderRadius.all(
                                                          Radius.circular(10))),
                                                  child: Image(
                                                      image:
                                                      AssetImage(Images.chat))),
                                              Align(
                                                alignment: Alignment.topRight,
                                                child: ChatCounter(),
                                              )
                                            ]),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => ChatScreen()));
                                    },
                                    child: CustomButton(
                                        bgColor: Color(0xff5492FD),
                                        buttonName: AppConstant.CHAt,
                                        textColor: Colors.white),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      });
                } else if (snapshot.hasError) {
                  return Center(
                      child: CircularProgressIndicator());
                }
                return Center(child: CircularProgressIndicator());
              }),
      ),

    );
  }
}
