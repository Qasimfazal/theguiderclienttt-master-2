import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:theguiderclienttt/Data/Data.dart';
import 'package:theguiderclienttt/List/homelist.dart';
import 'package:theguiderclienttt/model/SajdaModel.dart';
import 'package:theguiderclienttt/widget/FadedAnimation.dart';

class SajdaNew extends StatefulWidget {
  const SajdaNew({Key key}) : super(key: key);
  @override
  _SajdaNewState createState() => _SajdaNewState();
}

class _SajdaNewState extends State<SajdaNew> {
  @override
 static SajdaList sajda;



  void initState() {
    super.initState();
  }


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sajda Index"??"Null"),
        backgroundColor: Color.fromRGBO(143, 148, 251, 1),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[Color.fromRGBO(143, 148, 251, 1),Color.fromRGBO(143, 148, 251, .6)]),
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.all(5),
                itemCount: finalsajdalist.length,
                itemBuilder: (BuildContext ctx, index) {
                  return Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: <Color>[Color.fromRGBO(143, 148, 251, 1),Color.fromRGBO(143, 148, 251, .6)]),
                         // color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromRGBO(143, 148, 251, .2),
                                blurRadius: 20.0,
                                offset: Offset(0, 10))
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Column(
                          children: [
                            Text(finalsajdalist[index].number.toString()??"Null",style: TextStyle(color: Colors.black),),
                            Text(finalsajdalist[index].text??"Null"),
                            Text(finalsajdalist[index].englishNameTranslation??"Null"),
                             Text(finalsajdalist[index].juzNumber.toString()??"Null"),
                             Text(finalsajdalist[index].manzilNumber.toString()??"Null"),
                             Text(finalsajdalist[index].sajdaNumber.toString()??"Null"),
                            Text(finalsajdalist[index].surahName.toString()??"Null"),
                             Text(finalsajdalist[index].surahEnglishName??"Null"),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

        //    Text(Data.sajdaList.sajdaAyahs.number.toString()??"Null"),

          ],
        ),
      ),
    );
  }
  // Widget SajdaListt() {
  //   return Expanded(
  //     child: ListView.builder(
  //       padding: EdgeInsets.all(5),
  //       itemCount: finalsajdalist.length,
  //       itemBuilder: (BuildContext ctx, index) {
  //         return Column(
  //           children: [
  //               Text(finalsajdalist[index].number??"Null"),
  //                Text(finalsajdalist[index].text??"Null"),
  //                Text(finalsajdalist[index].englishNameTranslation??"Null"),
  //               // Text(sajda.sajdaAyahs[index].juzNumber.toString()??"Null"),
  //               // Text(sajda.sajdaAyahs[index].manzilNumber.toString()??"Null"),
  //               // Text(sajda.sajdaAyahs[index].sajdaNumber.toString()??"Null"),
  //               // Text(sajda.sajdaAyahs[index].surahName.toString()??"Null"),
  //               // Text(sajda.sajdaAyahs[index].surahEnglishName??"Null"),
  //           ],
  //         );
  //       },
  //     ),
  //   );
  // }
}
