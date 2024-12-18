import 'package:flutter/material.dart';
import 'package:untitled/app_colors.dart';

class RadioTab extends StatelessWidget {
  static const String routeName = 'radio';
  List<String> QuraaName =[];
  List<String> icons=[
    'assets/images/heart.png',
    'assets/images/polygon.png',
    'assets/images/volume.png'
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2, child: Container(
      color: Colors.black.withOpacity(0.7),
      child: Column(
        children: [
          Center(child: Image.asset('assets/images/logo_islami.png')),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black.withOpacity(0.7)
              ),
              child: TabBar(
                indicatorColor: Colors.transparent,
                tabs: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Radio', style: TextStyle(
                        color: AppColors.whiteColor
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Reciters', style: TextStyle(
                        color: AppColors.whiteColor
                    ),),
                  ),
                ],
              ),
          ),
          Container(
          child: Column(
            children: [
                // Expanded(child: ListView.builder(
                //   itemBuilder: (context,index){
                //     return Container(
                //       color: AppColors.primaryColor,
                //       child: Column(
                //         children: [
                //           Text('Radio Ibrahim Al-Akdar'),
                //           Row(
                //             children: [
                //               Image.asset('assets/images/heart.png'),
                //             ],
                //           )
                //         ],
                //       ),
                //     ) ;
                //   },
                //   itemCount:icons.length ,
                //
                // ))
            ],
          )
          ),
        ],
      ),
    ));
  }
}
