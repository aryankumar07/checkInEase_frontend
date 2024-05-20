import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings){
  switch(routeSettings.name){

    // case WhereTo.RouteName :
    //  return MaterialPageRoute(
    //   settings: routeSettings,
    //   builder: (_){
    //     return WhereTo();
    //   }
    //   );

    default:
    return MaterialPageRoute(
      settings: routeSettings,
      builder: (_)=>
      Scaffold(body: Center(child: Text('Page Not Found'),),));
  }
}