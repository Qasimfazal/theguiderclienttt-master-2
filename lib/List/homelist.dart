import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:theguiderclienttt/Screens/AzanTimming.dart';
import 'package:theguiderclienttt/Screens/Hadees/HadeesGridView.dart';
import 'package:theguiderclienttt/Screens/Madarsa.dart';
import 'package:theguiderclienttt/Screens/NewSajdalist.dart';
import 'package:theguiderclienttt/Screens/Qibla/Qibla.dart';


class HomeList {
  var destination;
  var image;
  var navigation;


  HomeList({
    @required this.destination,
    @required this.image,
    @required this.navigation,
  });
}

List<HomeList> homelist = [
  HomeList(
    destination: 'Online Madarsa ',
    image: 'assets/OnlineMadarsa.jpeg',
    navigation: OnlineMadarsa(),
  ),
  HomeList(
    destination: 'Full Quran',
    image: 'assets/Quran.jpeg',
    navigation: 'joinmeeting()',
  ),

  HomeList(
    destination: 'Audio Quran Search',
    image: 'assets/Quran.jpeg',
    navigation: 'SpeechSearch()',
  ),



  HomeList(
    destination: 'Sajda Index',
    image: 'assets/sajda.jpeg',
    navigation: SajdaNew(),
  ),
  HomeList(
    destination: 'Hadees',
    image: 'assets/hadees.png',
    navigation: Hadees(),
  ),
  HomeList(
    destination: 'Qibla Index',
    image: 'assets/qibla.png',
    navigation: Qibla(),
  ),
  HomeList(
    destination: 'Azan Timming',
    image: 'assets/azan.jpeg',
    navigation: AzaanScreen(),
  ),
];
