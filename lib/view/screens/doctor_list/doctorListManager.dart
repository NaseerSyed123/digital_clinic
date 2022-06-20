import 'dart:async';
import 'package:fitnessapp/ViewScreen/Homepages/Courses/doctor_list/DoctorListService.dart';
import 'package:fitnessapp/ViewScreen/Homepages/Courses/doctor_list/doctorListModel.dart';
import 'package:fitnessapp/ViewScreen/Homepages/Courses/getCoursesModel.dart';
import 'package:fitnessapp/ViewScreen/Homepages/Courses/doctor_list/DoctorListService.dart';
import 'package:rxdart/rxdart.dart';



class DoctorListManager {
  ///
  final BehaviorSubject<List<DoctorListModel>> _main =
      BehaviorSubject<List<DoctorListModel>>();

  Stream<List<DoctorListModel>> get mainList async* {
    yield await DoctorListService.browse1();
  }


  DoctorListManager() {
    print("-- getting data from stream in mainList");
    mainList.listen((value) => _main.addStream(mainList));
  }
}
