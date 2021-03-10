import 'dart:async';
import 'package:backiam_mess/Mytheme.dart';
import 'package:backiam_mess/Customtheme.dart';
import 'package:flutter/material.dart';
import 'package:backiam_mess/Home.dart';
import 'package:google_fonts/google_fonts.dart';
import 'aboutus.dart';
void main()
{
  runApp(CustomTheme(
    initialThemeKey: MyThemeKeys.LIGHT,
    child: MyApp(),
  ),);
}
 class MyApp extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       title: 'Dynamic themes demo',
       theme: CustomTheme.of(context),
       home: HomeScreen(),
     );
   }
 }
