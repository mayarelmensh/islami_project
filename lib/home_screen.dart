import 'package:flutter/material.dart';
import 'package:untitled/app_colors.dart';
import 'package:untitled/hadith.dart';
import 'package:untitled/quran.dart';
import 'package:untitled/radio.dart';
import 'package:untitled/sebha.dart';
import 'package:untitled/time.dart';

class HomeScreen extends StatefulWidget{
  static const String routeName ="home_screen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex=0;
  List<String> imagesPathes=[
    'assets/images/quran_background.png',
    'assets/images/hadith_background.png',
    'assets/images/sebha_background.png',
    'assets/images/radio_background.png',
    'assets/images/time_background.png'
  ];

  List<Widget>tabs=[
    Quran(),
    Hadith(),
    Sebha(),
    RadioTab(),
    Time()
  ];
  @override
  Widget build(BuildContext context) {

    return  Stack(
       children: [
         Image.asset(imagesPathes[selectedIndex],
         width: double.infinity,
         height: double.infinity,
         fit: BoxFit.cover,),
        Scaffold(
           bottomNavigationBar:  BottomNavigationBar(
             currentIndex: selectedIndex,
             onTap: (index){
               selectedIndex=index;
               setState(() {
               });
             },
                type: BottomNavigationBarType.fixed,
                items: [
                  BottomNavigationBarItem(icon: bottomNavigationContainer(index: 0, imageName: 'quran_icon'),
                      label: 'Quran'),
                  BottomNavigationBarItem(icon:bottomNavigationContainer(index: 1, imageName: 'hadith'),
                      label: 'Hadith'),
                  BottomNavigationBarItem(icon:bottomNavigationContainer(index: 2, imageName: 'sebha'),
                      label: 'Sebha'),
                  BottomNavigationBarItem(icon:bottomNavigationContainer(index: 3, imageName: 'radio'),
                      label: 'Radio'),
                  BottomNavigationBarItem(icon:bottomNavigationContainer(index: 4, imageName: 'time'),
                      label: 'Time'),
                ]
           ),
          body:tabs[selectedIndex] ,
        ),
       ],
      );

  }

  Widget bottomNavigationContainer({required int index ,required String imageName}){
   return selectedIndex==index?
    Container(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 6),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(66),
    color: AppColors.blackColorS,
    ),
        child: ImageIcon(AssetImage('assets/images/$imageName.png')),
    )
    :
 ImageIcon(AssetImage('assets/images/$imageName.png'));

  }
}