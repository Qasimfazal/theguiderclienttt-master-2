import 'package:flutter/material.dart';


const primaryColor = Color(0xffffffff);
const lightPurple = Color(0xfffbf2ff);
const DarkPurple = Color(0xffAA00D7);
const TextColour =TextStyle(color: Colors.black45);

const azanTimmingStyle =TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.w300);
const HeadingPage =TextStyle(color: Colors.black,fontSize: 28,fontWeight: FontWeight.w300);

TextStyle heading ({fontWeight,color}){
  return TextStyle(color:color?? Color(0xfff1f6266),fontFamily: 'Sen',fontSize: 17,fontWeight: fontWeight??FontWeight.bold);}
TextStyle ayats ({fontWeight,color}){
  return TextStyle(color:color?? Color(0xfff1f6266),fontSize: 22,fontWeight: fontWeight??FontWeight.bold,fontFamily: 'Sen');
}
TextStyle headingWhite ({fontWeight}){
  return TextStyle(color: Colors.white,fontFamily: 'Sen',fontSize: 18,fontWeight: fontWeight??FontWeight.bold);
}
TextStyle normalText ({color}){
  return TextStyle(color: color??Color(0xfff1f6266),fontFamily: 'Sen',fontSize: 15);}
TextStyle smallText ({color}){
  return TextStyle(color: color??Color(0xfff1f6266),fontFamily: 'Sen',fontSize: 12);
}
TextStyle smallerText ({color}){
  return TextStyle(color: color??Color(0xfff1f6266),fontFamily: 'Sen',fontSize: 10);
}
TextStyle boldText ({color}){
  return TextStyle(color: color??Color(0xfff1f6266),fontFamily: 'Sen',fontSize: 15,fontWeight: FontWeight.bold);
}