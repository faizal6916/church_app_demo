import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../util/color_util.dart';

class DonationScreen extends StatefulWidget {
  const DonationScreen({super.key});

  @override
  State<DonationScreen> createState() => _DonationScreenState();
}

class _DonationScreenState extends State<DonationScreen> {
  String dropdownValue = 'Direct';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorUtil.navyBlue,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
                SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.favorite,
                        size: 32,
                        color: ColorUtil.navyBlue,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Donate',
                        style: TextStyle(fontSize: 28, color: ColorUtil.navyBlue,fontWeight: FontWeight.w400),
                      ),
                      
                    ],
                  ),
                  SizedBox(height: 20,),
                  Text('Your Donation',style: TextStyle(
                    color: Colors.black,
                    fontSize: 24
                  ),),
                  SizedBox(height: 20,),
                  // Container(
                  //       width: 1.sw /2-50,
                  //       height: 50,
                  //       padding: EdgeInsets.only(left: 15),
                  //       decoration: BoxDecoration(
                  //         borderRadius: BorderRadius.circular(10),
                  //         color: ColorUtil.navyBlue.withOpacity(0.2),
                  //       ),
                  //       child: TextField(
                  //         decoration: InputDecoration(
                  //           border: InputBorder.none,
                  //           errorBorder: InputBorder.none,
                  //           focusedBorder: InputBorder.none,
                  //           contentPadding:
                  //               EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                  //           hintText: '     Rs100',
                  //           //icon: Icon(Icons.search),
                  //         ),
                  //       ),
                  //     ),
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
                   
            DropdownButton<String>(
            elevation: 0,
            isExpanded: true,
            //isDense: true,
            underline: Container(
              //margin: EdgeInsets.only(top: 15),
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(width: 1.0, style: BorderStyle.solid,color: ColorUtil.navyBlue.withOpacity(0.5)),
                                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                ),
                              ),),
            value: dropdownValue,
            
            items: <String>['Direct', 'UPI', 'Debit card', 'Credit card']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                  
                child: Text(
                  value,
                  style: TextStyle(fontSize: 16,color: ColorUtil.navyBlue),
                ),
              );
            }).toList(),
            
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue = newValue!;
              });
            },
            ),
     TextFormField(
              decoration: InputDecoration(

                helperText: ' ',
                labelText: 'Amount',
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.grey)
                            ),
                            child: Center(child: Text('Credit card',style: TextStyle(color: Colors.grey),)),
                          ),
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.grey)
                            ),
                            child: Center(child: Text('Bank Detail',style: TextStyle(color: Colors.grey),)),
                          ),
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.grey)
                            ),
                            child: Center(child: Text('...',style: TextStyle(color: Colors.black),)),
                          )
                        ],
                      ),
                      SizedBox(height: 80,),
                      ElevatedButton(onPressed: (){}, child: Text('Donate'),style: ElevatedButton.styleFrom(
                      primary: ColorUtil.navyBlue,
                        minimumSize: Size(1.sw/2, 50)
                      ),)
            ],
          ),
        ),
      ),
    );
  }
}