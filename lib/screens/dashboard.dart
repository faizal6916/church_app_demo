import 'package:carousel_slider/carousel_slider.dart';
import '../screens/notification_screen.dart';
import 'package:church_app/util/color_util.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/drawer.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  List<Map<String, dynamic>> _image = [
    {"image": "assets/image/church1.jpg"},
    {"image": "assets/image/church2.jpg"},
    {"image": "assets/image/church3.jpg"}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(
          'Welcome',
          style: TextTheme().bodyMedium,
        ),
        centerTitle: true,
        backgroundColor: ColorUtil.navyBlue,
        leading: IconButton(
            onPressed: () {
              _scaffoldKey.currentState!.openDrawer();
            },
            icon: Icon(Icons.menu)),
        elevation: 0,
        actions: [
          GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>NotificationScreen()));
            },
            child: Icon(Icons.notifications,color: Colors.white,)),
          SizedBox(width: 10,),
          CircleAvatar(
            radius: 22,
            backgroundColor: Colors.white,
            child: Image.asset('assets/image/person8.png'),
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              width: 1.sw,
              //height: 250,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 15.0, // soften the shadow
                    spreadRadius: 5.0, //extend the shadow
                    offset: Offset(
                      5.0, // Move to right 5  horizontally
                      5.0, // Move to bottom 5 Vertically
                    ),
                  )
                ],
              ),
              child: CarouselSlider.builder(
                itemCount: _image.length,
                itemBuilder: ((context, index, realIndex) => ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      _image[index]['image'],
                      fit: BoxFit.cover,
                      height: 250,
                    ))),
                options: CarouselOptions(
                    initialPage: 0,
                    viewportFraction: 1,
                    enlargeCenterPage: true,
                    //enableInfiniteScroll: true,
                    autoPlay: true),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'About',
              style: TextStyle(
                  color: ColorUtil.navyBlue,
                  fontSize: 32,
                  fontWeight: FontWeight.bold),
              //style: TextTheme().bodyMedium,
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'We exist to make disciples through living, demonstrating and sharing the gospel of Jesus Christ.We are a group of ordinary people of all ages and walks of life joined together by a common belief in the gospel of Jesus Christ. Twice in a week on we meet to worship God, listen to Bible teaching, and share friendship together. During the week we meet in smaller groups for fellowship, social events, youth groups, community action or whatever works.',
              style: TextStyle(color: Colors.black, fontSize: 16),
              textAlign: TextAlign.center,
            ),
            Spacer(flex: 1,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(style: ElevatedButton.styleFrom(
                  primary: ColorUtil.navyBlue,elevation: 0,
                ),onPressed: (){}, child: Text('Our History',style: TextStyle(
                  
                ),)),
                    ElevatedButton(style: ElevatedButton.styleFrom(
                  primary: ColorUtil.navyBlue,elevation: 0,
                ),onPressed: (){}, child: Text('Our Team',style: TextStyle(
                  
                ),))
              ],
            )
          ],
        ),
      ),
      drawer: CustomDrawer(),
    );
  }
}
