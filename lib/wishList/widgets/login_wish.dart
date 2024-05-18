import 'package:checkinease/dummy_data/hotels_data.dart';
import 'package:checkinease/wishList/widgets/no_wish.dart';
import 'package:flutter/material.dart';

class LoginWishList extends StatefulWidget {
  const LoginWishList({super.key});

  @override
  State<LoginWishList> createState() => _LoginWishListState();
}

class _LoginWishListState extends State<LoginWishList> {
  HotelData hotelData = HotelData();
  List<Map<String,dynamic>> fav_hotels = [];



  @override
  Widget build(BuildContext context) {
    return fav_hotels.length==0 ? 
    NoWish()
     : 
    Scaffold(
      appBar: AppBar(),
      body: Container(),
    );
  }
}