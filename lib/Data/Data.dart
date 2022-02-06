import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:theguiderclienttt/model/Mycoursesmodel.dart';
import 'package:theguiderclienttt/model/SajdaModel.dart';

import '../globals.dart';

class Data {
  static var sajdaList;

  static void Retrieve_MyCourtses() async {
    var value;
    print("sorry");
    myCoursesList.clear();
    Student_CourceList.clear();
    FirebaseAuth auth = FirebaseAuth.instance;
    DatabaseReference DB_Refrance = await FirebaseDatabase.instance
        .reference()
        .child("StudentCourse")
        .child(auth.currentUser.uid);
    DB_Refrance.once().then((DataSnapshot snapshot) {
      Map<dynamic, dynamic> values = snapshot.value;
      Iterable childkey1 = values.keys;
      childkey1.forEach((element) {
        Student_CourceList.add(element);

      });

    }).then((value) async {
      await datacalling();
    });
  }

  static void datacalling() async {
    myCoursesList.clear();
    FirebaseAuth auth = FirebaseAuth.instance;
    for (int res = 0; res < Student_CourceList.length; res++) {
      // for(var val in Student_CourceList){
      //
      // }

      DatabaseReference DB_Reference1 = await FirebaseDatabase.instance
          .reference()
          .child("StudentCourse")
          .child(auth.currentUser.uid)
          .child(Student_CourceList.elementAt(res).toString());
      await DB_Reference1.once().then((DataSnapshot snapshot) {
        // value = snapshot;
        myCoursesList.add(MyCoursesModel(
            RoomID: snapshot.value['RoomID'],
            Courcename: snapshot.value['Courcename'],
            cid: snapshot.key,
            Teacher_Uid: snapshot.value['Teacher_Uid'],
            SlotNo: snapshot.value['SlotNo'],
            SlotTime: snapshot.value['SlotTime'],
            Absents: snapshot.value['Absents'],
            Day: snapshot.value['Day'],
            StudentStrength: snapshot.value['StudentStrength']));
      });

      // print(value);
    }
  }

  static  Future<String> RetrieveData() {
    FirebaseAuth auth = FirebaseAuth.instance;
    DatabaseReference reference = FirebaseDatabase.instance.reference().child(
        "UserClient").child(auth.currentUser.uid);
    reference.once().then((DataSnapshot snapshot) {
      Student_Name = snapshot.value["Name"];
    });
  }
  Future getNamaz(var lat,lng)async{
    String url = "https://api.aladhan.com/v1/timings?latitude=$lat&longitude=$lng";
    final response = await Dio().get(url);
    if (response.statusCode == 200) {
      return response;
    } else {
      print("Failed to load");
      throw Exception("Failed  to Load Post");
    }
    return response;
  }
  static Future<SajdaList> getSajda() async {
    String url = "https://api.alquran.cloud/v1/sajda/quran-uthmani";
    final response = await Dio().get(url);

    if (response.statusCode == 200) {
      return SajdaList.fromJSON(response.data);
    } else {
      print("Failed to load");
      throw Exception("Failed  to Load Post");
    }
  }
 static getSajdaList() async {
    if (sajdaList == null) {
      sajdaList = await Data.getSajda();
      sajdaList = sajdaList;
      //update();
    } else {
      sajdaList = sajdaList;
       print(sajdaList.surahs.length);
      //update();

    }
  }
  // getSajdaList() async {
  //   if (HomeList.sajdaList == null) {
  //     sajdaList = await Data.getSajda();
  //     HomeList.sajdaList = sajdaList;
  //     update();
  //   } else {
  //     sajdaList = HomeList.sajdaList;
  //     // print(sajdaList.surahs.length);
  //     update();
  //
  //   }
  // }
 //
 // static Future getSajdaList() async {
 //    if (Utils.sajdaList == null) {
 //      sajdaList = await getSajda();
 //      Utils.sajdaList = sajdaList;
 //    //  update();
 //    } else {
 //      sajdaList = Utils.sajdaList;
 //      // print(sajdaList.surahs.length);
 //      //update();
 //
 //    }
 //  }
 //  static Future <SajdaList> getSajda() async {
 //    String url = "https://api.alquran.cloud/v1/sajda/quran-uthmani";
 //    final response = await Dio().get(url);
 //
 //    if (response.statusCode == 200) {
 //      return SajdaList.fromJSON(response.data);
 //    } else {
 //      print("Failed to load");
 //      throw Exception("Failed  to Load Post");
 //    }
 //  }

}
