import 'package:flutter/material.dart';
// import './pages/home.dart';
import 'package:worldtime/pages/home.dart';   //import a screen from the package
import 'package:worldtime/pages/loading.dart'; 
import 'package:worldtime/pages/choose_location.dart'; 
void main() => runApp(MaterialApp(
initialRoute: '/home',
routes: {
  '/':(context)=> Loading(),
  '/home':(context) => Home(),
  '/location' : (context) => ChooseLocation(),
},
));


