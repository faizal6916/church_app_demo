
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../screens/dashboard.dart';

import '../util/color_util.dart';
enum Gender{male,female}
enum AuthMode{login,signup}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  AuthMode _authMode = AuthMode.signup;
  Gender? _gender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
        child: SingleChildScrollView(
          child: (_authMode ==AuthMode.login)?Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 150,),
             
              Text('Login',style: TextStyle(color: ColorUtil.navyBlue,fontSize: 32),),
              SizedBox(height: 20,),
              TextFormField(
                      decoration: InputDecoration(helperText: ' ',
                                  labelText: 'Email',
                                  labelStyle: TextStyle(color: ColorUtil.navyBlue),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: ColorUtil.navyBlue),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: ColorUtil.navyBlue),
                                  ),),
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
                      decoration: InputDecoration(helperText: ' ',
                                  labelText: 'Password',
                                  labelStyle: TextStyle(color: ColorUtil.navyBlue),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: ColorUtil.navyBlue),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: ColorUtil.navyBlue),
                                  ),),
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
                    SizedBox(height: 25,),
                     ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (ctx)=>Dashboard()));
                     }, child: Text('Login'),style: ElevatedButton.styleFrom(
                    primary: ColorUtil.navyBlue,
                      minimumSize: Size(1.sw, 50)
                    ),),
                    SizedBox(height: 30,),
                    SizedBox(
                      width: 1.sw,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                                       Text('Don\'t have an account?',style: TextStyle(color: Colors.black),),
                                       GestureDetector(
                                        onTap: (){
                                          setState(() {
                                            _authMode =AuthMode.signup;
                                          });
                                        },
                                        child: Text('Sign up here',style: TextStyle(color: ColorUtil.navyBlue),))
                        ],
                      ),
                    ),
                    
            ],
          ):Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 70,),
             
              Text('Sign Up',style: TextStyle(color: ColorUtil.navyBlue,fontSize: 32),),
              SizedBox(height: 20,),
               Row(
                children: [
                  Text('Already hava an account?',style: TextStyle(color: Colors.black),),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        _authMode = AuthMode.login; 
                      });
                    },
                    child: Text('Login',style: TextStyle(color: ColorUtil.navyBlue),))
                ],
              ),
              //SizedBox(height: 200,),
              TextFormField(
                      decoration: InputDecoration(helperText: ' ',
                                  labelText: 'Name',
                                  labelStyle: TextStyle(color: ColorUtil.navyBlue),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: ColorUtil.navyBlue),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: ColorUtil.navyBlue),
                                  ),),
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
                      decoration: InputDecoration(helperText: ' ',
                                  labelText: 'Age',
                                  labelStyle: TextStyle(color: ColorUtil.navyBlue),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: ColorUtil.navyBlue),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: ColorUtil.navyBlue),
                                  ),),
                      keyboardType: TextInputType.emailAddress,
                      // validator: (value) {
                      //   if (value!.isEmpty || !value.contains('@')) {
                      //     return 'Invalid email!';
                      //   }
                      //   return null;
                      // },
                      onSaved: (value) {
                        //_authData['email'] = value.toString();
                      },
                    ),
                    Text('Gender',style: TextStyle(fontSize: 16,color: ColorUtil.navyBlue),),
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        
                        Radio(value: Gender.male
                        , groupValue: _gender, onChanged: (value){
                          setState(() {
                            _gender = value!;
                          });
                        }),
                        SizedBox(width: 120,child: Text('male',style: TextStyle(color: ColorUtil.navyBlue,fontSize: 16),)),
                             Radio(value: Gender.female
                        , groupValue: _gender, onChanged: (value){
                          setState(() {
                            _gender = value!;
                          });
                        }),
                        Text('female',style: TextStyle(color: ColorUtil.navyBlue,fontSize: 16),),
                      ],
                    ),
                        TextFormField(
                      decoration: InputDecoration(helperText: ' ',
                                  labelText: 'Email',
                                  labelStyle: TextStyle(color: ColorUtil.navyBlue),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: ColorUtil.navyBlue),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: ColorUtil.navyBlue),
                                  ),),
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
                      decoration: InputDecoration(helperText: ' ',
                                  labelText: 'Phone',
                                  labelStyle: TextStyle(color: ColorUtil.navyBlue),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: ColorUtil.navyBlue),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: ColorUtil.navyBlue),
                                  ),),
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
                     // maxLines: 4,
                      decoration: InputDecoration(
                        
                        helperText: ' ',
                                  labelText: 'Address',
                                  labelStyle: TextStyle(color: ColorUtil.navyBlue),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: ColorUtil.navyBlue),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: ColorUtil.navyBlue),
                                  ),),
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
                    SizedBox(height: 30,),
                    ElevatedButton(onPressed: (){}, child: Text('Create Account'),style: ElevatedButton.styleFrom(
                    primary: ColorUtil.navyBlue,
                      minimumSize: Size(1.sw, 50)
                    ),)
            ],
          ),
        ),
      ),
    );
  }
}