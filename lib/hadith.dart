import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled/app_colors.dart';
import 'package:untitled/hadith_details.dart';
import 'data_class/hadith_model.dart';

class Hadith extends StatefulWidget{
  @override
  State<Hadith> createState() => _HadithState();
}

class _HadithState extends State<Hadith> {
  List<HadithModel>hadithList=[];

  @override
  Widget build(BuildContext context) {
    if(hadithList.isEmpty){
      loadHadithfile();
    }
    return Container(
    child: hadithList.isEmpty?
        Center(
          child: CircularProgressIndicator(
            color: AppColors.primaryColor,
          ),
        )
    :

    Column(
      children: [
        Image.asset('assets/images/logo_islami.png'),
        CarouselSlider.builder(
          options: CarouselOptions(
            height: 450,
            viewportFraction:0.75 ,
            scrollDirection:  Axis.horizontal,
            enlargeCenterPage: true,
          ),
          itemCount: hadithList.length,
          itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
              InkWell(
                onTap: (){
                  Navigator.of(context).pushNamed(HadithDetails.routeName,
                  arguments:hadithList[itemIndex] );
                },
                child: Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColors.primaryColor,
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/images/hadith_cover.png')),
                  ),
                  child:Column(
                    children: [
                      Text(hadithList[itemIndex].title,
                      style: TextStyle(color: AppColors.blackColor,fontSize: 24,),),
                      Expanded(child: Text(hadithList[itemIndex].content.join(),style: TextStyle(fontSize: 15),)),
                    ],
                  ) ,
                ),
              ),
        ),
      ],
    )

    );
  }

  void loadHadithfile()async{
  for(int i=1; i<=50; i++){
   String hadithContent= await rootBundle.loadString('assets/files/hadith/h$i.txt');
   List <String> hadithLines =hadithContent.split('\n');
   String title=hadithLines[0];
   hadithLines.removeAt(0);/// etb2a elcontent bs
   HadithModel hadithModel=HadithModel(content: hadithLines, title: title) ;
   hadithList.add(hadithModel);
   setState(() {

   });
  }

  }
}