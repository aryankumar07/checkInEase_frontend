import 'package:checkinease/hotels/screen/hotel_detail_screen.dart';
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

    case HotelDetalScreen.routeName:
    var hotelinfo = routeSettings.arguments as Map<String,dynamic>;
    return MaterialPageRoute(
      settings: routeSettings,
      builder: (_)=>HotelDetalScreen(
        hotelInfo: hotelinfo,
      ));

    default:
    return MaterialPageRoute(
      settings: routeSettings,
      builder: (_)=>
      Scaffold(body: Center(child: Text('Page Not Found'),),));
  }
}