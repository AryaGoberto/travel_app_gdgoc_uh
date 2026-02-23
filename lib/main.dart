import 'package:flutter/material.dart';
import 'package:travel_app_gdgoc_uh/booking_screen.dart';
import 'package:travel_app_gdgoc_uh/detail_screen.dart';

void main() {
  runApp(TravelApp());
}

class TravelApp extends StatelessWidget {
  const TravelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Poppins'
      ),
      debugShowCheckedModeBanner: false,
      home: BookingScreen()
    );
  }
}
