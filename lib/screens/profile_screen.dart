import 'package:church_app/util/color_util.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorUtil.navyBlue,
      ),
      body: Column(
        //crossAxisAlignment: CrossAxisAlignment.end,
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 1.sw,
            height: 200,

            child: Center(
              child: CircleAvatar(
                radius: 60,
                backgroundColor: ColorUtil.navyBlue,
                child: Image.asset('assets/image/user_profile.png',fit: BoxFit.cover,),
              ),
            ),
          ),
          Text('Lorem Ipsum',style: TextStyle(color: ColorUtil.navyBlue,fontSize: 32,fontWeight: FontWeight.w700),),
          SizedBox(height: 15,),
          Text('mail@mail.com',style: TextStyle(color: ColorUtil.navyBlue,fontSize: 16,fontWeight: FontWeight.w400),),
          SizedBox(height: 15,),
          Text('2922 Hillside Drive,Cambridge',style: TextStyle(color: ColorUtil.navyBlue,fontSize: 16,fontWeight: FontWeight.w400),)
        ],
      ),
    );
  }
}