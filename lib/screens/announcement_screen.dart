import 'package:church_app/util/color_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AnnouncementScreen extends StatelessWidget {
  const AnnouncementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorUtil.navyBlue,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          children: [
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.campaign_outlined,
                  size: 32,
                  color: ColorUtil.navyBlue,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Announcements',
                  style: TextStyle(fontSize: 28, color: ColorUtil.navyBlue,fontWeight: FontWeight.w400),
                ),
                
              ],
            ),
            SizedBox(height: 10,),
            Container(
                  width: 1.sw,
                  height: 1.sh- 250,
                  child: ListView(
                    physics: BouncingScrollPhysics(),
                    children: [
                      announContainer(),
                      announContainer()
                    ],
                  ),
                )
          ],
        ),
      ),
    );
  }

  Widget announContainer() => Container(
        margin: EdgeInsets.only(top: 15),
        width: 1.sw,
        height: 140,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 15.0, // soften the shadow
              spreadRadius: 5.0, //extend the shadow
              offset: Offset(
                5.0, // Move to right 5  horizontally
                5.0, // Move to bottom 5 Vertically
              ),
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
          child: Row(
            children: [
              Container(width: 120,height: 140,decoration: BoxDecoration(
                color: ColorUtil.navyBlue,
                borderRadius: BorderRadius.circular(20)
              ),child: Center(child: Text('03 May 2023',style: TextStyle(fontSize: 16),)),),
              SizedBox(width: 15,),
              SizedBox(
                width: 1.sw-200,
                height: 150,
                child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut laboris nisi ut aliqui',style: TextStyle(color: Colors.black,),))
            ],
          ),
        ),
      );
}
