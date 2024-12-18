import 'package:flutter/material.dart';
import 'package:untitled/app_colors.dart';

class AyaDesign extends  StatelessWidget{
  String content;
  int index;
  AyaDesign({required this.content,required this.index});
  @override
  Widget build(BuildContext context) {
   return Container(
     padding: EdgeInsets.all(10),
     margin: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
     decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(15),
       color: AppColors.blackColorS,
       border: Border.all(
         color:AppColors.primaryColor,
          width: 2,
       )
     ),
     child: Text('$content [${index+1}]',
       textDirection: TextDirection.rtl,
         style: TextStyle(fontSize: 20,
             color: AppColors.primaryColor ,),textAlign: TextAlign.center),
   );
  }

}