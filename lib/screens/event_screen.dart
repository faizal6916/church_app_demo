import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../util/color_util.dart';

class EventScreen extends StatefulWidget {
  const EventScreen({super.key});

  @override
  State<EventScreen> createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
  DateTime _currentDate = DateTime.now();
  DateTime _currentDate2 = DateTime.now();
  String _currentMonth = DateFormat.MMMM().format(DateTime.now());
  DateTime _targetDateTime = DateTime.now();
   EventList<Event> _markedDateMap = new EventList<Event>(
    events: {
      new DateTime(2019, 2, 10): [
        new Event(
          date: new DateTime(2019, 2, 10),
          title: 'Event 1',
          icon: _eventIcon,
          dot: Container(
            margin: EdgeInsets.symmetric(horizontal: 1.0),
            color: Colors.red,
            height: 5.0,
            width: 5.0,
          ),
        ),
        new Event(
          date: new DateTime(2019, 2, 10),
          title: 'Event 2',
          icon: _eventIcon,
        ),
        new Event(
          date: new DateTime(2019, 2, 10),
          title: 'Event 3',
          icon: _eventIcon,
        ),
      ],
    },
  );
  static Widget _eventIcon = new Container(
    decoration: new BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(1000)),
        border: Border.all(color: ColorUtil.navyBlue, width: 2.0)),
    child: new Icon(
      Icons.person,
      color: Colors.white,
    ),
  );

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
                    Icons.calendar_month_outlined,
                    size: 32,
                    color: ColorUtil.navyBlue,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Events',
                    style: TextStyle(fontSize: 28, color: ColorUtil.navyBlue,fontWeight: FontWeight.w400),
                  ),
                  
                ],
              ),
              SizedBox(height: 10,),
                    Container(
              width: 1.sw,
              height: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.2),
          blurRadius: 30.0, // soften the shadow
          spreadRadius: 12.0, //extend the shadow
          offset: Offset(
            5.0, // Move to right 5  horizontally
            5.0, // Move to bottom 5 Vertically
          ),
          
        )
          ],
    
              ),
              child: CalendarCarousel<Event>(
      onDayPressed: (date, events) {
        this.setState(() => _currentDate = date);
        events.forEach((event) => print(event.title));
      },
      onCalendarChanged: (DateTime date){
        this.setState(() {
          _targetDateTime = date;
          _currentMonth = DateFormat.MMMM().format(_targetDateTime);
        });
      },
      weekendTextStyle: TextStyle(
        color: Colors.red,
      ),
      thisMonthDayBorderColor: Colors.grey,
      showOnlyCurrentMonthDate: false,
//          weekDays: null, /// for pass null when you do not want to render weekDays
      headerText: _currentMonth,
      weekFormat: false,
      headerTextStyle: TextStyle(
        color: ColorUtil.navyBlue,
        fontSize: 24,
        fontWeight: FontWeight.w400
      ),
      iconColor: ColorUtil.navyBlue,
      //showHeader: false,
      markedDatesMap: _markedDateMap,
      height: 200.0,
      selectedDateTime: _currentDate2,
      showIconBehindDayText: true,
//          daysHaveCircularBorder: false, /// null for not rendering any border, true for circular border, false for rectangular border
      customGridViewPhysics: NeverScrollableScrollPhysics(),
      markedDateShowIcon: true,
      markedDateIconMaxShown: 2,
      selectedDayTextStyle: TextStyle(
        color: Colors.yellow,
      ),
      todayTextStyle: TextStyle(
        color: ColorUtil.navyBlue,
      ),
      markedDateIconBuilder: (event) {
        return event.icon ?? Icon(Icons.help_outline);
      },
      minSelectedDate: _currentDate.subtract(Duration(days: 360)),
      maxSelectedDate: _currentDate.add(Duration(days: 360)),
      todayButtonColor: Colors.transparent,
      todayBorderColor: ColorUtil.navyBlue,
      markedDateMoreShowTotal:
          true, // null for not showing hidden events indicator
//          markedDateIconMargin: 9,
//          markedDateIconOffset: 3,
    ),
              ),
              Expanded(
                child: Container(
                  width: 1.sw,
                  //height: 1.sh-520,
                  padding: EdgeInsets.only(bottom: 15),
                  //margin: EdgeInsets.only(top: 15,bottom: 15),
                  //color: Colors.red,
                  child: ListView(
                    children: [
                      singleEvent(),
                      singleEvent(),
                      singleEvent()
                    ],
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }

   

  Widget singleEvent()=>Container(
    width: 1.sw,
    height: 120,
    margin: EdgeInsets.only(top: 15),
    padding: EdgeInsets.all(15),
    //color: Colors.amber,
         decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.2),
          blurRadius: 30.0, // soften the shadow
          spreadRadius: 5.0, //extend the shadow
          offset: Offset(
            5.0, // Move to right 5  horizontally
            5.0, // Move to bottom 5 Vertically
          ),
          
        )
          ],
      
              ),
    child: Column(children: [
      Row(
        //mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 200,
            height: 90,
            padding: EdgeInsets.all(5),
            //color: Colors.black,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text('Morning prayer',style: TextStyle(
                color: ColorUtil.navyBlue,
                fontSize: 18,

              ),),
              SizedBox(
                height: 10,
              ),
              Text('9.00 am - 12.00pm',style: TextStyle(
                fontSize: 12,
                color: Colors.black
              ),)
            ]),
          ),
           Container(
            width: 80,
            height: 90,
            
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: ColorUtil.navyBlue,
            ),
            child: Center(
              child: Text('Tue',style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.w400
              ),),
            ),
          )
        ],
      )
    ]),
  );
}