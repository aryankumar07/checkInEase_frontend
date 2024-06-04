import 'package:flutter/material.dart';

class HostBar extends StatelessWidget{

  Map<String,dynamic> hotelInfo;

  HostBar({
    super.key,
    required this.hotelInfo,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(hotelInfo['host']['profilePic']),
        ),
        SizedBox(width: 20,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hosted by ${hotelInfo['host']['name']}',
              style: TextStyle(

                fontSize: 18,
                fontWeight: FontWeight.w400
              ),
            ),
            Text(
              'superHost - ${hotelInfo['host']['hosting_time']} years hosting',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w200
              ),
            )
          ],
        )
      ],
    );
  }

}