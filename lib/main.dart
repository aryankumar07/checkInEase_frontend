import 'package:checkinease/Constants/Global_color.dart';
import 'package:checkinease/common/bottom_navigation_bar.dart';
import 'package:checkinease/router.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: GlobalColor.scaffolodWhite,
      ),

      onGenerateRoute: (settings) => generateRoute(settings),

      home: BottomBar(),
    );
  }
}