import 'package:church_app/screens/announcement_screen.dart';
import 'package:church_app/screens/bible_screen.dart';
import 'package:church_app/screens/dashboard.dart';
import 'package:church_app/screens/donation_screen.dart';
import 'package:church_app/screens/event_screen.dart';
import 'package:church_app/screens/profile_screen.dart';
import 'package:church_app/screens/testimonial_screen.dart';
import 'package:church_app/util/color_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  List<Map<String,dynamic>> _menuItem =[{
    'name':'Announcement',
    'icon':Icons.campaign_outlined,
     'navigation':AnnouncementScreen()
  },{
    'name':'View Testimonials',
    'icon':Icons.folder_open,
    'navigation': TestimonialScreen()
  },
  {
    'name': 'Events',
    'icon': Icons.calendar_month_outlined,
     'navigation': EventScreen()
  },
  {
    'name': 'Bible',
    'icon': Icons.import_contacts,
    'navigation': BibleScreen()
  },
  {
    'name': 'Donate',
    'icon':Icons.favorite,
    'navigation': DonationScreen()
  },
  {
    'name': 'View Profile',
    'icon': Icons.account_circle_outlined,
    'navigation':ProfileScreen()
  },
  {
    'name': 'Logout',
    'icon':Icons.logout,
    'navigation': null
  }
  ];
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
        child: GridView.count(crossAxisCount: 2,crossAxisSpacing: 12,mainAxisSpacing: 12,children:List.generate(_menuItem.length, (index) => menuItem(name: _menuItem[index]['name'],ico: _menuItem[index]['icon'],nav: _menuItem[index]['navigation'])),),
      ),
    );
  }

  Widget menuItem({String? name,IconData? ico, Widget? nav})=>GestureDetector(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (ctx)=>nav!));
    },
    child: Container(
      width: 60,
      height: 60,
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Icon(ico!,size: 32,color: ColorUtil.navyBlue,),
        SizedBox(height: 20,),
        SizedBox(width: 1.sw,child: Text(name!,style: TextStyle(fontSize: 16,color: Colors.black),textAlign: TextAlign.center,))
      ]),
    ),
  );
}