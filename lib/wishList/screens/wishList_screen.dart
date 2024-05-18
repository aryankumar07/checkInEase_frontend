import 'package:checkinease/settings/widget/login_on.dart';
import 'package:checkinease/wishList/widgets/login_wish.dart';
import 'package:checkinease/wishList/widgets/no_login_wish.dart';
import 'package:flutter/material.dart';

class WishListScreen extends StatefulWidget {
  const WishListScreen({super.key});

  @override
  State<WishListScreen> createState() => _WishListScreenState();
}

class _WishListScreenState extends State<WishListScreen> {

  bool _isloggedin = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _isloggedin? 
      LoginWishList() : NologinWishScreen(),
    );
  }
}