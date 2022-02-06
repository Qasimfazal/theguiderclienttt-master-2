import 'package:flutter/material.dart';
import 'package:flutter_qiblah/flutter_qiblah.dart';
import 'package:theguiderclienttt/Screens/Qibla/qiblah_compass.dart';

import 'loading_indicator.dart';


class Qibla extends StatefulWidget {


  const Qibla({Key key}) : super(key: key);

  @override
  _QiblaState createState() => _QiblaState();
}

class _QiblaState extends State<Qibla> {
  final _deviceSupport = FlutterQiblah.androidDeviceSensorSupport();


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  @override
  void dispose() {

    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: FutureBuilder(
        future: _deviceSupport,
        builder: (_, AsyncSnapshot<bool> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting)
            return LoadingIndicator();
          if (snapshot.hasError)
            return Center(
              child: Text("Error: ${snapshot.error.toString()}"),
            );

          if (snapshot.data)
            return QiblahCompass();
          else
            return Container(
              child: Center(
                child: Text("Unable to get Qibla Directions"),
              ),
            );
        },
      ),

    );
  }
}
