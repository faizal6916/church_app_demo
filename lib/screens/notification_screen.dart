import 'package:church_app/util/color_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorUtil.navyBlue,
        title: Text('Notifications'),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
        child: Column(
          children: [
            eachNotification(),
            eachNotification(),
            eachNotification(),
          ],
        ),
      ),
    );
  }
  Widget eachNotification()=>    Container(
              width: 1.sw,
              height: 100,
              //color: Colors.red,
              margin: EdgeInsets.only(bottom: 15),
              decoration: BoxDecoration(
                  color: ColorUtil.navyBlue,
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 1.sw - 60,
                    height: 80,
                    margin: EdgeInsets.only(right: 4),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 1.sw - 150,
                            height: 80,
                            child: Center(
                              child: Text(
                                'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet',
                                style: TextStyle(color: ColorUtil.navyBlue),
                              ),
                            ),
                          ),
                          CircleAvatar(
                            backgroundColor: ColorUtil.navyBlue.withOpacity(0.2),
                            child: Text('12m',style: TextStyle(color: ColorUtil.navyBlue,fontSize: 10),),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            );
}
