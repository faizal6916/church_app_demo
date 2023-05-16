import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../util/color_util.dart';

class PrayerRequest extends StatefulWidget {
  const PrayerRequest({super.key});

  @override
  State<PrayerRequest> createState() => _PrayerRequestState();
}

class _PrayerRequestState extends State<PrayerRequest> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: ColorUtil.navyBlue,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.person_add_outlined,
                size: 32,
                color: ColorUtil.navyBlue,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Prayer Request',
                style: TextStyle(
                    fontSize: 28,
                    color: ColorUtil.navyBlue,
                    fontWeight: FontWeight.w400),
              ),
              
            ],
          ),
          Expanded(child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                     TextFormField(
                    decoration: InputDecoration(
                      helperText: ' ',
                      labelText: 'Name',
                      labelStyle: TextStyle(color: ColorUtil.navyBlue),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: ColorUtil.navyBlue),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: ColorUtil.navyBlue),
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value!.isEmpty || !value.contains('@')) {
                        return 'Invalid email!';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      //_authData['email'] = value.toString();
                    },
                  ),
                          TextFormField(
                    decoration: InputDecoration(
                      helperText: ' ',
                      labelText: 'Address',
                      labelStyle: TextStyle(color: ColorUtil.navyBlue),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: ColorUtil.navyBlue),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: ColorUtil.navyBlue),
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value!.isEmpty || !value.contains('@')) {
                        return 'Invalid email!';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      //_authData['email'] = value.toString();
                    },
                  ),
                      TextFormField(
                        maxLines: 4,
                    decoration: InputDecoration(
                      
                      helperText: ' ',
                      labelText: 'Prayer',
                      labelStyle: TextStyle(color: ColorUtil.navyBlue),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: ColorUtil.navyBlue),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: ColorUtil.navyBlue),
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value!.isEmpty || !value.contains('@')) {
                        return 'Invalid email!';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      //_authData['email'] = value.toString();
                    },
                  ),
                  SizedBox(
                    height: 80.h,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Navigator.push(
                      //     context, MaterialPageRoute(builder: (ctx) => Dashboard()));
                    },
                    child: Text('Send Request'),
                    style: ElevatedButton.styleFrom(
                        primary: ColorUtil.navyBlue, minimumSize: Size(1.sw, 50)),
                  ),
                  ],
                ),
          ),),
               

          ],
        ),
      )
    );
  }
}