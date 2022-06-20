import 'dart:async';
import 'dart:convert';
import 'package:fitnessapp/ViewScreen/Homepages/Courses/doctor_list/doctorListModel.dart';
import 'package:fitnessapp/ViewScreen/Homepages/Courses/getCoursesModel.dart';
import 'package:http/http.dart' as http;
import 'package:fitnessapp/AppLayer/Overseer.dart';



class DoctorListService {
  static Future<List<DoctorListModel>> browse1() async {
    http.Response response;
    // Uri url = new Uri(host: "", path: "/fitness/public/api/courses");
    response = await http.post(

        /// get the data
        Uri.parse("http://yfitness.com/fitness/public/api/courses"),
        headers: {
          'Access-Control-Allow-Origin': '*',
          'Accept': 'application/json',
          'Authorization':
              'Bearer FegGc2loq2FoHcZdPJ2VhQA0jXJYihjBUGSs4rq0qyhNrb1xFabQMV6yFkrx',
        });
    //,headers: {
    //       'Access-Control-Allow-Origin': '*',
    //       'Accept' : 'application/json',
    //       'Authorization':'Bearer ${Overseer.token}',
    //
    //     }
    print("got the response");
    String content = response.body;
    Overseer.printWrapped("this is the content of of the trainer ${content}");
    var jString = [content];

    String arr = jString.toString();
    List collection = json.decode(arr);
    print('print before parssing ');
    List<DoctorListModel> _mainList =
        collection.map((json) => DoctorListModel.fromJson(json)).toList();
    print('print after parssing ');
    // print("print image path ${_mainList[0].Data1[0].DayActivity1[0].image}");
    // print('day actvity lenth ${_mainList[0].Data1[0].DayActivity1[0].day}');
    print("model class lenth ${_mainList.length.toString()}");

    print(' the trainer response ${response.body}');
    print(' the trainer content ${content}');

    // if (_mainList[0].Data1[2].Trainer1 != null) {
    //   print("print if block in the course");
    //   // print('if block execute the error the trainer name ${_mainList[0].Data1[4].Trainer1!.firstName}');
    //   // print(' the trainer video ${_mainList[0].Data1[4].video}');
    //   // // print(' the trainer name ${_mainList[0].Data1[4].Equipments1[0].name}');
    //   // // print(' the trainer video ${_mainList[0].Data1[4].daystocompletion}');
    //   // print(' the trainer details ${_mainList[0].Data1[4].DayActivity1[0].detail}');
    // } else {
    //   print("after the course");
    //   print(
    //       'else block execute the error hee print the user id ${_mainList[0].Data1[0].title.toString()}');
    // }


    //Todo error ki waja sy comment kar dia rat ko
    //Todo important code

    // end for loop
    Overseer.allCategoryCoursesList.add(Overseer.newCoursesList.length);
    Overseer.allCategoryCoursesList.add(Overseer.trendingCoursesList.length);
    Overseer.allCategoryCoursesList.add(Overseer.withToolsMCoursesList.length);
    Overseer.allCategoryCoursesList
        .add(Overseer.withoughtToolsMCoursesList.length);
    Overseer.allCategoryCoursesList.add(Overseer.gYMCoursesList.length);
    print("out side for loop");
    print("all list length new ${Overseer.newCoursesList.length}");
    print("all list length trend ${Overseer.trendingCoursesList.length}");
    print("all list length with ${Overseer.withToolsMCoursesList.length}");
    print("all list length out ${Overseer.withoughtToolsMCoursesList.length}");
    print("all list length gym ${Overseer.gYMCoursesList.length}");
    print("out side for loop bla bla ${Overseer.allCategoryCoursesList}");
    return _mainList;
  }

}
