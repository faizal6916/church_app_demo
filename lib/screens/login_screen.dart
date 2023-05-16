
import 'package:church_app/screens/login_form.dart';
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
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  String? _gender;
  //AuthMode _authMode = AuthMode.signup;
  //Gender? _gender;
  String? gender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
        child: SingleChildScrollView(
          child: 
          //(_authMode ==AuthMode.login)?
          // Column(
          //   //mainAxisAlignment: MainAxisAlignment.start,
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: [
          //     SizedBox(height: 150,),
             
          //     Text('Login',style: TextStyle(color: ColorUtil.navyBlue,fontSize: 32),),
          //     SizedBox(height: 20,),
          //     TextFormField(
          //             decoration: InputDecoration(helperText: ' ',
          //                         labelText: 'Email',
          //                         labelStyle: TextStyle(color: ColorUtil.navyBlue),
          //                         focusedBorder: UnderlineInputBorder(
          //                           borderSide:
          //                               BorderSide(color: ColorUtil.navyBlue),
          //                         ),
          //                         enabledBorder: UnderlineInputBorder(
          //                           borderSide:
          //                               BorderSide(color: ColorUtil.navyBlue),
          //                         ),),
          //             keyboardType: TextInputType.emailAddress,
          //             validator: (value) {
          //               if (value!.isEmpty || !value.contains('@')) {
          //                 return 'Invalid email!';
          //               }
          //               return null;
          //             },
          //             onSaved: (value) {
          //               //_authData['email'] = value.toString();
          //             },
          //           ),
          //             TextFormField(
          //             decoration: InputDecoration(helperText: ' ',
          //                         labelText: 'Password',
          //                         labelStyle: TextStyle(color: ColorUtil.navyBlue),
          //                         focusedBorder: UnderlineInputBorder(
          //                           borderSide:
          //                               BorderSide(color: ColorUtil.navyBlue),
          //                         ),
          //                         enabledBorder: UnderlineInputBorder(
          //                           borderSide:
          //                               BorderSide(color: ColorUtil.navyBlue),
          //                         ),),
          //             keyboardType: TextInputType.emailAddress,
          //             validator: (value) {
          //               if (value!.isEmpty || !value.contains('@')) {
          //                 return 'Invalid email!';
          //               }
          //               return null;
          //             },
          //             onSaved: (value) {
          //               //_authData['email'] = value.toString();
          //             },
          //           ),
          //           SizedBox(height: 25,),
          //            ElevatedButton(onPressed: (){
          //             Navigator.push(context, MaterialPageRoute(builder: (ctx)=>Dashboard()));
          //            }, child: Text('Login'),style: ElevatedButton.styleFrom(
          //           primary: ColorUtil.navyBlue,
          //             minimumSize: Size(1.sw, 50)
          //           ),),
          //           SizedBox(height: 30,),
          //           SizedBox(
          //             width: 1.sw,
          //             child: Row(
          //               mainAxisAlignment: MainAxisAlignment.center,
          //               children: [
          //                              Text('Don\'t have an account?',style: TextStyle(color: Colors.black),),
          //                              GestureDetector(
          //                               onTap: (){
          //                                 setState(() {
          //                                   _authMode =AuthMode.signup;
          //                                 });
          //                               },
          //                               child: Text('Sign up here',style: TextStyle(color: ColorUtil.navyBlue),))
          //               ],
          //             ),
          //           ),
                    
          //   ],
          // )
          //:
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 70,),
             
              Text('Sign Up',style: TextStyle(color: ColorUtil.navyBlue,fontSize: 32),),
              SizedBox(height: 20,),
      //  Row(
              //   children: [
              //     Text('Already hava an account?',style: TextStyle(color: Colors.black),),
              //     GestureDetector(
              //       onTap: (){
              //         // setState(() {
              //         //   _authMode = AuthMode.login; 
              //         // });
              //         Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>LoginForm()));
              //       },
              //       child: Text('Login',style: TextStyle(color: ColorUtil.navyBlue),))
              //   ],
              // ),        
              //SizedBox(height: 200,),
              TextFormField(
                controller: nameController,
                style: TextStyle(color: ColorUtil.navyBlue),
                      decoration: InputDecoration(helperText: ' ',
                                  labelText: 'Name',
                                  //fillColor: ColorUtil.navyBlue,

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
                          controller: ageController,
                          style: TextStyle(color: ColorUtil.navyBlue),
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
                        
                        Radio(value: "male"
                        , groupValue: gender, onChanged: (value){
                          setState(() {
                            gender = value!;
                            
                          });
                        }),
                        Text('male',style: TextStyle(color: ColorUtil.navyBlue,fontSize: 16),),
                       // SizedBox(width: 60,child: Text('male',style: TextStyle(color: ColorUtil.navyBlue,fontSize: 16),)),
                             Radio(value: "female"
                        , groupValue: gender, onChanged: (value){
                          setState(() {
                            gender = value!;
                          });
                        }),
                        Text('female',style: TextStyle(color: ColorUtil.navyBlue,fontSize: 16),),
                           Radio(value: "other"
                        , groupValue: gender, onChanged: (value){
                          setState(() {
                            gender = value!;
                          });
                        }),
                        Text('other',style: TextStyle(color: ColorUtil.navyBlue,fontSize: 16),),
                      ],
                    ),
                        TextFormField(
                          controller: emailController,
                          style: TextStyle(color: ColorUtil.navyBlue),
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
                          controller: phoneController,
                          style: TextStyle(color: ColorUtil.navyBlue),
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
                     controller: addressController,
                     style: TextStyle(color: ColorUtil.navyBlue),
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
                    ElevatedButton(onPressed: (){
                       if(nameController.text.isNotEmpty){
                          print(nameController.text);
                          
                          if(ageController.text.isNotEmpty){
                            print(ageController.text);
                            if(gender != null){
                              print(gender);
                              if(emailController.text.isNotEmpty){
                                print(emailController.text);
                                if(phoneController.text.isNotEmpty){
                                  print(phoneController.text);
                                  if(addressController.text.isNotEmpty){
                                    print(addressController.text);
                                    showSnackbar('Account Created Successfully', Colors.green);
                                  }else{
                                    showSnackbar('Please Enter Your Address',Colors.red);
                                  }
                                }else{
                                  showSnackbar('Please Enter Your Mobile Number',Colors.red);
                                }
                              }else{
                                showSnackbar('Please Enter Your Email',Colors.red);
                              }
                            }else{
                              showSnackbar('Please Select Your Gender',Colors.red);
                            }
                          }else{
                            showSnackbar('Please Enter Your Age',Colors.red);
                          }
                        }else{
                          showSnackbar('Please Enter Your Name',Colors.red);
                        }
                    }, child: Text('Create Account'),style: ElevatedButton.styleFrom(
                    primary: ColorUtil.navyBlue,
                      minimumSize: Size(1.sw, 50)
                    ),)
            ],
          ),
        ),
      ),
    );
  }
  void showSnackbar(String content, Color snackColor){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(content),backgroundColor: snackColor,padding: EdgeInsets.all(15),shape: StadiumBorder(),behavior: SnackBarBehavior.floating,));
  }
}