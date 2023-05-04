import 'dart:async';

import 'package:church_app/util/color_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}



class _SplashScreenState extends State<SplashScreen> {


  void _navigate(){
   Timer(Duration(seconds: 3),
        () => Navigator.push(context, MaterialPageRoute(builder: (ctx)=>LoginScreen())));
        //() => Navigator.of(context).push(createRoute(NoConnection())));
  }
  @override
  void initState() {
    // TODO: implement initState
    _navigate();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 1.sw,
          height: 1.sh,
          color: ColorUtil.navyBlue,
          child: Image.asset('assets/image/churchlogo.jpg'),
        ),
      ),
    );
  }
}