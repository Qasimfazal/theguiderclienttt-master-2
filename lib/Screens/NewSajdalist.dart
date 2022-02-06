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
      appBar: AppBar(),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Container(
              height:600,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  padding: EdgeInsets.all(5),
                  itemCount: finalsajdalist.length,
                  itemBuilder: (BuildContext ctx, index) {
                    return Column(
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
                    );
                  },
                ),),

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
