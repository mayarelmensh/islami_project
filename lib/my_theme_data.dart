import 'package:flutter/material.dart';

import 'app_colors.dart';

class MyThemeData {
   static final ThemeData darkTheme =ThemeData(
      appBarTheme: AppBarTheme(
         centerTitle: true,
         iconTheme: IconThemeData(
           color: AppColors.primaryColor
         ),
         backgroundColor: AppColors.blackColor,
         titleTextStyle: TextStyle(color: AppColors.primaryColor),
      ),
     scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: AppColors.whiteColor,
      unselectedItemColor: AppColors.blackColor,
      backgroundColor:AppColors.primaryColor,
      showSelectedLabels: true,
      showUnselectedLabels: false,
    )
   );

}