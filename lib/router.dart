import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings){
  switch(routeSettings.name){


    default:
    return MaterialPageRoute(
      settings: routeSettings,
      builder: (_)=>
      Scaffold(body: Center(child: Text('Page Not Found'),),));
  }
}