import 'dart:async';
import 'package:digital_clinic/view/screens/doctor_list/DoctorListService.dart';
import 'package:digital_clinic/view/screens/doctor_list/DoctorListModel.dart';

import 'package:digital_clinic/view/screens/doctor_list/DoctorListService.dart';
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
