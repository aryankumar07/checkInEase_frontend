import 'package:checkinease/Trips/widgets/No_login_trip.dart';
import 'package:flutter/material.dart';

class TripScreen extends StatefulWidget {
  const TripScreen({super.key});

  @override
  State<TripScreen> createState() => _TripScreenState();
}

class _TripScreenState extends State<TripScreen> {
  bool _isLogged = false;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _isLogged ? 
      SizedBox() : NoLoginTripScreen() ,
    );
  }
}