import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CategoryConst {
  static const List<Map<String,dynamic>> CategoryList = [
    {
      'name':'Tiny Homes',
      'icondata': FontAwesomeIcons.home
    },
    {
      'name':'Golfing',
      'icondata': Icons.golf_course
    },
    {
      'name':'Beach',
      'icondata': FontAwesomeIcons.umbrellaBeach
    },
    {
      'name':'Amazing Pools',
      'icondata': FontAwesomeIcons.swimmingPool
    },
    {
      'name':'Lake',
      'icondata': FontAwesomeIcons.water
    },
    {
      'name':'Trending',
      'icondata': Icons.trending_neutral
    },
    {
      'name':'OMG!',
      'icondata': FontAwesomeIcons.plane
    },
    {
      'name':'Top of the world',
      'icondata': FontAwesomeIcons.mountain
    },
    
  ];

  static const Map<String,IconData> Icondatalist = {
    'Wifi' : Icons.wifi,
    'Sea view' : Icons.waves,
    'Dedicated workspace' : Icons.work,
    'bed Lines' : Icons.bed_rounded,
    'baby care' : Icons.baby_changing_station,
    'Iron' : Icons.iron,
    'Hair dryer' : Icons.air,
    'First aid' : Icons.healing_rounded,
    'safe' : Icons.security,
    'Clothes storage' : Icons.warehouse,
    'Heating' : Icons.heat_pump,
    'Temple' : Icons.temple_buddhist_sharp,
    'Fire extinguisher' : Icons.fire_extinguisher,
    'Gas Cooker' : Icons.gas_meter,
    'Fireplace' : Icons.fireplace_outlined,
    'Bikes' : Icons.bike_scooter,
    'Free parking' : Icons.local_parking,
    'Smoking rooms' : Icons.smoking_rooms,
    'Co2 alarm' : Icons.co2

  };

  static const List<Map<String,dynamic>> LocationList = [
    {
      'map_image' : 'assets/images/world_map.jpg',
      'name' : "I'm Flexible"
    },
    {
      'map_image' : 'assets/images/asia.svg.png',
      'name' : "ASIA"
    },
    {
      'map_image' : 'assets/images/africa.svg.png',
      'name' : "AFRICA"
    },
    {
      'map_image' : 'assets/images/europe.jpg',
      'name' : "EUROPE"
    },
    {
      'map_image' : 'assets/images/australia.png',
      'name' : "AUSTRALIA"
    },
  ];
}