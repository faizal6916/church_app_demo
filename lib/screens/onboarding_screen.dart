import 'package:church_app/screens/dashboard.dart';
import 'package:church_app/screens/login_form.dart';
import 'package:church_app/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../util/color_util.dart';
import '../models/onboard_model.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  var _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xFF3f5a7b).withOpacity(0.4),
      body: Container(
        width: 1.sw,
        height: 1.sh,
        //color: Colors.red,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
          child: Column(
            children: [
              Container(
                width: 1.sw,
                height: 1.sh - 250,
                //color: Colors.yellow,
                //alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: PageView.builder(
                      onPageChanged: (index) {
                        setState(() {
                          _currentIndex = index;
                          // if(_currentIndex == onboardItems.length){
                          //   Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx)=>Dashboard()));
                          // }
                        });
                      },
                      itemCount: onboardItems.length,

                      itemBuilder: (_, i) => Padding(
                        padding: EdgeInsets.only(top: 100),
                        child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '${onboardItems[i].title}',
                                  style: TextStyle(
                                      color: ColorUtil.navyBlue, fontSize: 32),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Image.asset(onboardItems[i].image!),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Text(
                                  '${onboardItems[i].subName}',
                                  
                                  style: TextStyle(color: ColorUtil.navyBlue,fontSize: 18),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Text(
                                  '${onboardItems[i].description}',
                                  style: TextStyle(color: ColorUtil.navyBlue),
                                ),
                                // SizedBox(
                                //   height: 20.h,
                                // ),
                                Spacer(flex: 1,),
                                Container(
                                  width: 1.sw,
                                  height: 20,
                                  //color: Colors.pink,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: List.generate(onboardItems.length,
                                        (index) => buildIndicator(index)),
                                  ),
                                ),
                              ],
                            ),
                      )),
                ),
              ),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (ctx)=>LoginScreen()));
                     //Navigator.pushReplacement(context, MaterialPageRoute(builder: (ctx)=>LoginScreen()));
                    },
                    child: Text('Create Account'),
                    style: ElevatedButton.styleFrom(
                        primary: ColorUtil.navyBlue,
                        minimumSize: Size(1.sw, 50)),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (ctx)=>LoginForm()));
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(color: ColorUtil.navyBlue),
                    ),
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }

  Widget buildIndicator(int index) => Container(
        width: 5.w,
        height: 5.h,
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color: (_currentIndex == index) ? ColorUtil.navyBlue : Color(0xFF3f5a7b).withOpacity(0.4),
          borderRadius: BorderRadius.circular(10),
        ),
      );
}
