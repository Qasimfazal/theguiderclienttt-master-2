import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:theguiderclienttt/Screens/Hadees/Sahi-Bukhari-Jilad-Vol1.dart';
import 'package:theguiderclienttt/Screens/Hadees/Sahi-Bukhari-Jilad-Vol2.dart';
import 'package:theguiderclienttt/Screens/Hadees/Sahi-Bukhari-Jilad-Vol3.dart';
import 'package:theguiderclienttt/Screens/Hadees/Sahi-Bukhari-Jilad-Vol4.dart';
import 'package:theguiderclienttt/Screens/Hadees/Sahi-Bukhari-Jilad-Vol5.dart';
import 'package:theguiderclienttt/Screens/Hadees/Sahi-Bukhari-Jilad-Vol6.dart';


class HadeesList {
  var destination;
  var image;
  var navigation;


  HadeesList({
    @required this.destination,
    @required this.image,
    @required this.navigation,
  });
}

List<HadeesList> Hadeeslist = [
  HadeesList(
    destination: 'Saheh Al-Bukhari Vol.1',
    image: 'assets/hadees.png',
    navigation: Vol1(),
  ),
  HadeesList(
    destination: 'Saheh Al-Bukhari Vol.2',
    image: 'assets/hadees.png',
    navigation: Val2(),
  ),

  HadeesList(
    destination: 'Saheh Al-Bukhari Vol.3',
    image: 'assets/hadees.png',
    navigation: Vol3(),
  ),



  HadeesList(
    destination: 'Saheh Al-Bukhari Vol.4',
    image: 'assets/hadees.png',
    navigation: Vol4(),
  ),
  HadeesList(
    destination: 'Saheh Al-Bukhari Vol.5',
    image: 'assets/hadees.png',
    navigation: Vol5(),
  ),
  HadeesList(
    destination: 'Saheh Al-Bukhari Vol.6',
    image: 'assets/hadees.png',
    navigation:Vol6(),
  ),

];
