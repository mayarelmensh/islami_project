import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled/app_colors.dart';
import 'package:untitled/aya_design.dart';
import 'package:untitled/data_class/sura_class.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName = 'sura_details';

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
 List<String>verses=[];

  @override
  Widget build(BuildContext context) {
    var args=ModalRoute.of(context)?.settings.arguments as SuraModel;
    if(verses.isEmpty){
      loadSuraContent(args.index);

    }
    return Scaffold(
    appBar: AppBar(
      elevation: 0.0,
      title: Text(args.suraEnName,style: TextStyle(fontSize: 20)),
      centerTitle: true,
    ),
    body:Stack(
      alignment: Alignment.center,
      children: [
        Container(
          color: AppColors.blackColor,
            child: Image.asset('assets/images/Group 67.png',
              width: double.infinity,height: double.infinity,fit: BoxFit.fill,)),
        Column(
          children: [
            SizedBox(height: 20,),
            Text(args.suraArabicName,style: TextStyle(fontSize: 24,color: AppColors.primaryColor),),
            Expanded(
              child: verses.isEmpty?
                  Center(child: CircularProgressIndicator(
                    color: AppColors.primaryColor,
                  ))
              :
               ListView.builder(
                 padding: EdgeInsets.only(top: 10),
                 itemBuilder: (context,index) {

               return AyaDesign(content: verses[index], index: index);

              },
                itemCount: verses.length,
              ),
            )
            ],
        )
      ],
    ) ,
    );
  }

   void loadSuraContent(int index)async{
   String suraContent= await rootBundle.loadString('assets/files/suras/${index+1}.txt');
  List<String> suraLines= suraContent.split('\n');
   verses=suraLines;
   setState(() {
   });
   }


}