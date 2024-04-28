import 'package:checkinease/Constants/Global_color.dart';
import 'package:checkinease/Home/Screens/Home_screen.dart';
import 'package:checkinease/Inbox/Screen/inbox_screen.dart';
import 'package:checkinease/Trips/screens/trips_screen.dart';
import 'package:checkinease/settings/screen/settings_screen.dart';
import 'package:checkinease/wishList/screens/wishList_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _page = 0;

  void updatePage(int page){
    setState(() {
      _page = page;
    });
  }

  final List<Widget> screens = [
    HomeScreen(),
    WishListScreen(),
    TripScreen(),
    InboxScreen(),
    SettingScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_page],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _page,
        selectedItemColor: GlobalColor.SelectedIconcolor,
        unselectedItemColor: GlobalColor.unSelectedIconcolor,
        iconSize: 28,
        onTap: updatePage,
        items: [
          BottomNavigationBarItem(
            label: '',
            icon: Container(
              child: Column(
                children: [
                  Icon(Icons.search),
                  Text("Explore")
                ],
              ),
            )),

          BottomNavigationBarItem(
            label: '',
            icon: Container(
              child: Column(
                children: [
                  Icon(Icons.add_location),
                  Text("Whislist")
                ],
              ),
            )),
          
          BottomNavigationBarItem(
            label: '',
            icon: Container(
              child: Column(
                children: [
                  Icon(Icons.trip_origin),
                  Text("Trips")
                ],
              ),
            )),

          BottomNavigationBarItem(
            label: '',
            icon: Container(
              child: Column(
                children: [
                  Icon(Icons.inbox),
                  Text("InBox")
                ],
              ),
            )),
          
          BottomNavigationBarItem(
            label: '',
            icon: Container(
              child: Column(
                children: [
                  Icon(Icons.login),
                  Text("Log In")
                ],
              ),
            )),
          
        ]),
    );
  }
}