import 'package:flutter/material.dart';
import 'package:untitled/hadith_details.dart';
import 'package:untitled/home_screen.dart';
import 'package:untitled/my_theme_data.dart';
import 'package:untitled/sebha.dart';
import 'package:untitled/sura_details.dart';
import 'package:untitled/radio.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context)=>HomeScreen(),
        SuraDetails.routeName:(context)=>SuraDetails(),
        HadithDetails.routeName:(context)=>HadithDetails(),
        Sebha.routeName:(context)=>Sebha(),
        RadioTab.routeName:(context)=>RadioTab()
      },
      darkTheme: MyThemeData.darkTheme,
      themeMode:ThemeMode.dark ,
      
    );

  }
}
