import 'package:flutter/material.dart';

class VolunteerSignup extends StatefulWidget {
  const VolunteerSignup({super.key});

  @override
  State<VolunteerSignup> createState() => _VolunteerSignupState();
}

class _VolunteerSignupState extends State<VolunteerSignup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('volunteer signup',style: TextStyle(color: Colors.black),),
    );
  }
}