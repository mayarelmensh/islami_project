    import 'package:flutter/material.dart';
import 'package:untitled/app_colors.dart';
import 'package:untitled/data_class/sura_class.dart';
import 'package:untitled/sura_details.dart';
import 'package:untitled/sura_list_widget.dart';


class Quran extends StatelessWidget{

   @override
  Widget build(BuildContext context) {
   return Container(
     margin:  EdgeInsets.all(12),
     child: Column(
       children: [
         Image.asset('assets/images/logo_islami.png'),
         TextFormField(
           style: TextStyle(color: AppColors.whiteColor),
         decoration: InputDecoration(
           hintText: 'Sura Name',
           hintStyle: TextStyle(color: AppColors.whiteColor),
           prefixIcon: ImageIcon(
                color: AppColors.primaryColor,
               AssetImage('assets/images/quran_icon.png',
           )),
           enabledBorder: OutlineInputBorder(
             borderSide: BorderSide(color: AppColors.primaryColor),
             borderRadius: BorderRadius.circular(15),
           ),
           focusedBorder: OutlineInputBorder(
             borderRadius: BorderRadius.circular(15),
             borderSide: BorderSide(
               color: AppColors.primaryColor
             )
           ),
         ),
           cursorColor: AppColors.whiteColor,

         ),
         SizedBox(height: 20,),
         Row(
           children:[ Row(
             children:[ Text('Most Recently',
             style: TextStyle(color: AppColors.whiteColor),),
           ]
         ),
           ]
         ),
         SizedBox(height: 15,),
         Container(
           decoration: BoxDecoration(
             color: AppColors.primaryColor,
             borderRadius: BorderRadius.circular(20)
           ),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Al-Anbiaa',
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                  Text('الانبياء',
                      style: TextStyle(fontSize: 15,
                      fontWeight: FontWeight.bold)
                  ),
                  Text('112 verses',style: TextStyle(fontSize: 10,
                  fontWeight: FontWeight.bold),)
                ],
              ),
               Image.asset('assets/images/rectangle.png',)
             ],
           ),
         ),
         SizedBox(height: 15,),
         Row(
             children:[ Row(
                 children:[ Text('Suras List',
                   style: TextStyle(color: AppColors.whiteColor),),
                 ]
             ),
             ]
         ),
         SizedBox(height: 15,),
         Expanded(
           child: ListView.separated(
             separatorBuilder: (context,index){
               return Divider(color: AppColors.whiteColor,
               thickness: 2,
               indent: 25,
               endIndent:25 ,);
             },
             itemBuilder:(context,index) {
             return  InkWell(
               onTap: (){
               Navigator.of(context).pushNamed(SuraDetails.routeName,
               arguments: SuraModel.getSuraModel(index)
               );
              },
               child: SuraListWidget(
                  suraModel: SuraModel.getSuraModel(index), ),
             );
           },
           itemCount: SuraModel.getLength(),
             padding: EdgeInsets.zero,
            ),
         )

       ],
     ),
   );
  }

}