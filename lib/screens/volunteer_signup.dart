import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../util/color_util.dart';

class VolunteerSignup extends StatefulWidget {
  const VolunteerSignup({super.key});

  @override
  State<VolunteerSignup> createState() => _VolunteerSignupState();
}

class _VolunteerSignupState extends State<VolunteerSignup> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  // var name;
  // var age;
  // var gender;
  // var email;
  // var phone;
  // var address;
  TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: ColorUtil.navyBlue,
          elevation: 0,
        ),
        
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      child: Column(
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
                'Volunteer Signup',
                style: TextStyle(
                    fontSize: 28,
                    color: ColorUtil.navyBlue,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextFormField(
                    controller: nameController,
                    decoration: InputDecoration(
                      helperText: ' ',
                      labelText: 'Volunteer Name',
                      labelStyle: TextStyle(color: ColorUtil.navyBlue),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: ColorUtil.navyBlue),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: ColorUtil.navyBlue),
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    // validator: (value) {
                    //   if (value!.isEmpty || !value.contains('@')) {
                    //     return 'Invalid email!';
                    //   }
                    //   return null;
                    // },
                    // onSaved: (value) {
                    //   //_authData['email'] = value.toString();
                    // },
                    // onFieldSubmitted: (value) {
                    //   name = value;
                    //   print(name);
                    // },
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      helperText: ' ',
                      labelText: 'Age',
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
                      labelText: 'Email',
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
                      labelText: 'Phone',
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
                  SizedBox(
                    height: 50.h,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Navigator.push(
                      //     context, MaterialPageRoute(builder: (ctx) => Dashboard()));
                      // if(nameController.text.isNotEmpty){
                      //   print(nameController.text);
                      // }else{
                      //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Please Enter Your Name')));
                      // }
                    },
                    child: Text('Sign Up'),
                    style: ElevatedButton.styleFrom(
                        primary: ColorUtil.navyBlue, minimumSize: Size(1.sw, 50)),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
