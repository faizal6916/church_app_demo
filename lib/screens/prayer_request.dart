import 'package:flutter/material.dart';

class PrayerRequest extends StatefulWidget {
  const PrayerRequest({super.key});

  @override
  State<PrayerRequest> createState() => _PrayerRequestState();
}

class _PrayerRequestState extends State<PrayerRequest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('prayer request',style: TextStyle(color: Colors.black),),
    );
  }
}