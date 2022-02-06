import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:theguiderclienttt/Data/Data.dart';

import '../Config.dart';

class AzaanScreen extends StatefulWidget {
  // static const routeName = '/AzaanScreen';

  const AzaanScreen({Key key}) : super(key: key);

  @override
  _AzaanScreenState createState() => _AzaanScreenState();
}

class _AzaanScreenState extends State<AzaanScreen> {
  Location location = new Location();
  LocationData _locationData;
  var prayerTimes;
  var zone;
  String selectedUser;
  //final _adsController = Get.put(AdsProvider());
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getlocation();
    //  _adsController.bannerAd();
  }

  @override
  void dispose() {
    //_adsController.myBanner.dispose();
    super.dispose();
  }

  getlocation() async {
    _locationData = await location.getLocation();
    var response =
    await Data().getNamaz(_locationData.latitude, _locationData.longitude);
    print(response.toString());
    Map<String, dynamic> data = response.data;
    prayerTimes = data['data']['timings'];
    zone = data['data']['meta'];
    setState(() {});
  }

  // List<String> users = <String>[
  //   'muslim_world_league', 'north_america', 'dubai', 'egyptian','kuwait','singapore','turkey','tehran'
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: prayerTimes == null
          ? Center(
        child: CircularProgressIndicator(
          color: Colors.black54,
        ),
      )
          : Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/background.png'),
                            fit: BoxFit.fill)),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                            left: 30,
                            width: 80,
                            height: 200,
                            child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/light-1.png'))),
                            )),
                        Positioned(
                          left: 140,
                          width: 80,
                          height: 150,
                          child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/light-2.png'))),
                          ),
                        ),
                        Positioned(
                          right: 40,
                          top: 40,
                          width: 80,
                          height: 150,
                          child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                    AssetImage('assets/clock.png'))),
                          ),
                        ),
                        Positioned(
                            top: 30,
                            left: 30,
                            child: Container(
                              margin: EdgeInsets.only(top: 20),
                              child: Center(
                                child: Row(
                                  children: [
                                    InkWell(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        child: Icon(
                                          Icons.power_settings_new,
                                          color: Colors.white,
                                        )),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    // Text(
                                    //   "Teacher Portal",
                                    //   style: TextStyle(
                                    //       color: Colors.white,
                                    //       fontSize: 22,
                                    //       fontWeight: FontWeight.bold),
                                    // ),
                                  ],
                                ),
                              ),
                            )),
                      ],
                    ),
                  ),
                  // Text(
                  //     prayerTimes == null
                  //         ? "Pk Zone"
                  //         : " Your Local Timezone : " + zone['timezone'],
                  //     style: TextStyle(
                  //         color: Colors.white,
                  //         fontFamily: 'Sen',
                  //         fontSize: 18,
                  //         fontWeight: FontWeight.bold))
                ],
              ),
              Column(
                children: [
                  Text(
                      'Azan Timming',
                      style:HeadingPage),
                  SizedBox(height: 6,),
                  Text(
                      prayerTimes == null
                          ? "Pk Zone"
                          : " Your Local Timezone : " + zone['timezone'],
                      style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.w300)),
                  SizedBox(height: 6,),
                  NamazCard(

                      "FAJR",
                      prayerTimes['Fajr']),
                  NamazCard(

                      "SUNRISE",
                      prayerTimes['Sunrise']),
                  NamazCard(

                      "DHUHR",
                      prayerTimes['Dhuhr']),
                  NamazCard(

                      "ASR",
                      prayerTimes['Asr']),
                  NamazCard(

                      "MAGHRIB",
                      prayerTimes['Maghrib']),
                  NamazCard(

                      "ISHA",
                      prayerTimes['Isha']),
                ],
              ),
              // Align(
              //   //alignment: Alignment.bottomRight,
              //   child: Padding(
              //     padding: const EdgeInsets.symmetric(
              //         horizontal: 5, vertical: 10),
              //     child: SingleChildScrollView(
              //       child: Column(
              //         children: [
              //           NamazCard(
              //
              //               "FAJR",
              //               prayerTimes['Fajr']),
              //           NamazCard(
              //
              //               "SUNRISE",
              //               prayerTimes['Sunrise']),
              //           NamazCard(
              //
              //               "DHUHR",
              //               prayerTimes['Dhuhr']),
              //           NamazCard(
              //
              //               "ASR",
              //               prayerTimes['Asr']),
              //           NamazCard(
              //
              //               "MAGHRIB",
              //               prayerTimes['Maghrib']),
              //           NamazCard(
              //
              //               "ISHA",
              //               prayerTimes['Isha']),
              //         ],
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }

  Widget NamazCard(var name, time) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 55,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(colors: [
              Color.fromRGBO(143, 148, 251, 1),
              Color.fromRGBO(143, 148, 251, .6),
            ])),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Text(name == null ? "Namaz" : name,
                  style: azanTimmingStyle),
              Spacer(),
              Text(time == null ? "Time" : time,
                  style: azanTimmingStyle),
            ],
          ),
        ),

      ),
    );
  }
}
