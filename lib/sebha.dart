import 'package:flutter/material.dart';
import 'package:untitled/app_colors.dart';

class Sebha extends StatefulWidget {
  static const String routeName = 'sebha';

  @override
  State<Sebha> createState() => _SebhaState();
}

class _SebhaState extends State<Sebha> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  int counter = 0;
  int totalCounter=0;
  String zekr = '';
  double turns = 1.0;
  List<int>indexes=[];

  List<String> azkar = [
    'سبحان الله',
    'الحمد لله',
    'لا اله الا الله',
    'الله اكبر'
  ];

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(vsync: this);
    zekr =azkar[0];
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }


  void add() {
    setState(() {
      if(totalCounter!=135) {
        totalCounter++;
      }else{
        totalCounter=0;
      }
      counter++;
      if (counter == 34) {
        counter = 0;
      }
    });
    zekr=getZekr(totalCounter);
  }


  String getZekr(int index) {
    if(index!=136) {
      if (index < 34) {
        return azkar[0];
      } else if (index < 68) {
        return azkar[1];
      } else if (index < 102) {
        return azkar[2];
      } else if (index <= 135) {
        return azkar[3];
      }

    }
    return 'invaild zekr';
  }

  double rotation() {
    return turns += 0.01;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black.withOpacity(0.7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Image.asset('assets/images/logo_islami.png')),
          Text(
            'سَبِّحِ اسْمَ رَبِّكَ الأعلى',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: AppColors.whiteColor),
          ),
          Container(child: Image.asset('assets/images/sebhaBody2.png')),
          Stack(
            alignment: Alignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  add();
                },
                child: AnimatedRotation(
                  duration: Duration(microseconds: 1),
                  turns: rotation(),
                  child: Container(
                    width: 300,
                    height: 300,
                    child: Image.asset('assets/images/sebhaBody1.png', width: 300, height: 300),
                  ),
                ),
              ),
              Column(
                children: [
                  Text(
                    zekr,
                    style: TextStyle(fontSize: 36, color: AppColors.whiteColor),
                  ),
                  Text(
                    counter.toString(),
                    style: TextStyle(fontSize: 36, color: AppColors.whiteColor),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
