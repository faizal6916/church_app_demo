import 'package:church_app/util/color_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BibleScreen extends StatelessWidget {
  const BibleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorUtil.navyBlue,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
        child: Column(
          children: [
             SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.import_contacts,
                    size: 32,
                    color: ColorUtil.navyBlue,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Bible',
                    style: TextStyle(fontSize: 28, color: ColorUtil.navyBlue,fontWeight: FontWeight.w400),
                  ),
                  
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_left,color: ColorUtil.navyBlue,size: 60,),
                  Text('John 1',style: TextStyle(
                color: Colors.black,
                fontSize: 32,
                
              ),),
              Icon(Icons.arrow_right,color: ColorUtil.navyBlue,size: 60,),
                ],
              ),
              Container(
                width: 1.sw,
                height: 1.sh-235,
                //color: Colors.blue,
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  children: [
                   Text('[1] In the beginning was the Word, and the Word was with God, and the Word was God.',style: TextStyle(color: Colors.black,),),
                   SizedBox(height: 5,),
                    Text('[2] The same was in the beginning with God.',style: TextStyle(color: Colors.black,),),
                    SizedBox(height: 5,),
                     Text('[3] All things were made by him; and without him was not any thing made that was made.',style: TextStyle(color: Colors.black,),),
                     SizedBox(height: 5,),
                      Text('[4] In him was life; and the life was the light of men.',style: TextStyle(color: Colors.black,),),
                      SizedBox(height: 5,),
                       Text('[5] And the light shineth in darkness; and the darkness comprehended it not.',style: TextStyle(color: Colors.black,),),
                       SizedBox(height: 5,),
                        Text('[6] There was a man sent from God, whose name was John.',style: TextStyle(color: Colors.black,),),
                        SizedBox(height: 5,),
                                    Text('[1] In the beginning was the Word, and the Word was with God, and the Word was God.',style: TextStyle(color: Colors.black,),),
                   SizedBox(height: 5,),
                    Text('[2] The same was in the beginning with God.',style: TextStyle(color: Colors.black,),),
                    SizedBox(height: 5,),
                     Text('[3] All things were made by him; and without him was not any thing made that was made.',style: TextStyle(color: Colors.black,),),
                     SizedBox(height: 5,),
                      Text('[4] In him was life; and the life was the light of men.',style: TextStyle(color: Colors.black,),),
                      SizedBox(height: 5,),
                       Text('[5] And the light shineth in darkness; and the darkness comprehended it not.',style: TextStyle(color: Colors.black,),),
                       SizedBox(height: 5,),
                        Text('[6] There was a man sent from God, whose name was John.',style: TextStyle(color: Colors.black,),),
                                   Text('[1] In the beginning was the Word, and the Word was with God, and the Word was God.',style: TextStyle(color: Colors.black,),),
                   SizedBox(height: 5,),
                    Text('[2] The same was in the beginning with God.',style: TextStyle(color: Colors.black,),),
                    SizedBox(height: 5,),
                     Text('[3] All things were made by him; and without him was not any thing made that was made.',style: TextStyle(color: Colors.black,),),
                     SizedBox(height: 5,),
                      Text('[4] In him was life; and the life was the light of men.',style: TextStyle(color: Colors.black,),),
                      SizedBox(height: 5,),
                       Text('[5] And the light shineth in darkness; and the darkness comprehended it not.',style: TextStyle(color: Colors.black,),),
                       SizedBox(height: 5,),
                        Text('[6] There was a man sent from God, whose name was John.',style: TextStyle(color: Colors.black,),),
                        SizedBox(height: 5,),
                                    Text('[1] In the beginning was the Word, and the Word was with God, and the Word was God.',style: TextStyle(color: Colors.black,),),
                   SizedBox(height: 5,),
                    Text('[2] The same was in the beginning with God.',style: TextStyle(color: Colors.black,),),
                    SizedBox(height: 5,),
                     Text('[3] All things were made by him; and without him was not any thing made that was made.',style: TextStyle(color: Colors.black,),),
                     SizedBox(height: 5,),
                      Text('[4] In him was life; and the life was the light of men.',style: TextStyle(color: Colors.black,),),
                      SizedBox(height: 5,),
                       Text('[5] And the light shineth in darkness; and the darkness comprehended it not.',style: TextStyle(color: Colors.black,),),
                       SizedBox(height: 5,),
                        Text('[6] There was a man sent from God, whose name was John.',style: TextStyle(color: Colors.black,),),
                  ],
                ),
                )
              
          ],
        ),
      ),
    );
  }
}