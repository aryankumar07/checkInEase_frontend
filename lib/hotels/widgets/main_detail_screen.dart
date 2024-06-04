import 'package:checkinease/hotels/widgets/hotel_detail_scroll_screen.dart';
import 'package:checkinease/hotels/widgets/hotel_topbar.dart';
import 'package:flutter/material.dart';

class MainDetailScreen extends StatelessWidget{

  Map<String,dynamic> hotelInfo;

  MainDetailScreen({
    super.key,
    required this.hotelInfo,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          child: Image(
            fit: BoxFit.fill,
            image: NetworkImage(
              hotelInfo['hotel_images'][0],
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: HotelTopBar(),
        ),
        HotelDetailScrollScreen(hotelInfo: hotelInfo,),
      ],
    );
  }
}