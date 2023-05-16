import 'package:church_app/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../util/color_util.dart';
import 'dashboard.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 150,
            ),
            Text(
              'Login',
              style: TextStyle(color: ColorUtil.navyBlue, fontSize: 32),
            ),
            SizedBox(
              height: 20,
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
                labelText: 'Password',
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
              height: 25,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (ctx) => Dashboard()));
              },
              child: Text('Login'),
              style: ElevatedButton.styleFrom(
                  primary: ColorUtil.navyBlue, minimumSize: Size(1.sw, 50)),
            ),
            SizedBox(
              height: 30,
            ),
            // SizedBox(
            //   width: 1.sw,
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       Text(
            //         'Don\'t have an account?',
            //         style: TextStyle(color: Colors.black),
            //       ),
            //       GestureDetector(
            //           onTap: () {
            //             // setState(() {
            //             //   _authMode =AuthMode.signup;
            //             // });
            //             Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>LoginScreen()));
            //           },
            //           child: Text(
            //             'Sign up here',
            //             style: TextStyle(color: ColorUtil.navyBlue),
            //           ))
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
