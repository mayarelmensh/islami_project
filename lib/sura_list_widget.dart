import 'package:flutter/material.dart';
import 'package:untitled/app_colors.dart';

import 'data_class/sura_class.dart';

class SuraListWidget extends StatelessWidget{
  SuraModel suraModel;
  SuraListWidget({required this.suraModel});

  @override
  Widget build(BuildContext context) {
     return Row(
       children: [
         Stack(
           alignment: Alignment.center ,
           children: [
             Image.asset('assets/images/sura.png'),
             Text('${suraModel.index+1}',
             style: TextStyle(color: AppColors.whiteColor),),
           ],
         ),
         SizedBox(width: 15,),
         Expanded(
           child: Row(
             children: [
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text(suraModel.suraEnName,
                   style: TextStyle(color: AppColors.whiteColor,fontSize: 17),),
                   Text('${suraModel.numOfVerses} verses',
                     style: TextStyle(color: AppColors.whiteColor,fontSize: 12),),

                 ],
               ),
             ],
           ),
         ),
         Text(suraModel.suraArabicName,style: TextStyle(color: AppColors.whiteColor,fontSize: 17),)
       ],
     );
  }

}