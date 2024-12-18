import 'package:flutter/material.dart';
import 'package:untitled/app_colors.dart';
import 'package:untitled/data_class/hadith_model.dart';

class HadithDetails extends StatelessWidget{
  static const String routeName ='hadith_details';

  @override
  Widget build(BuildContext context) {
    var args =ModalRoute.of(context)?.settings.arguments as HadithModel;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text(args.title,style: TextStyle(fontSize: 20)),
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
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.only(top: 10),
                  itemBuilder: (context,index) {
                    return Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(args.content[index],
                      style: TextStyle(color: AppColors.primaryColor,
                      fontSize: 20),),
                    );
                  },
                  itemCount: args.content.length,
                ),
              )
            ],
          )
        ],
      ) ,
    );
  }
  
}