import 'package:checkinease/common/line.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HotelDetailScrollScreen extends StatelessWidget{


  Map<String,dynamic> hotelInfo;

  HotelDetailScrollScreen({
    super.key,
    required this.hotelInfo
  });

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.6,
      maxChildSize: 1,
      minChildSize: 0.6,
      builder: (context,scrollController){
        return Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
              )
          ),
          child: SingleChildScrollView(
            controller: scrollController,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    '${hotelInfo['name']}',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      color: Colors.black
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    '${hotelInfo['location']}',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w400
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      Icon(Icons.star),
                      SizedBox(width: 5,),
                      Text(
                        '${hotelInfo['total_rating']}.'
                      ),
                      SizedBox(width: 5,),
                      Text(
                        '${hotelInfo['review_ids'].length.toString()} reviews',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.w400
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Line(),
                )
              ],
            ),
          ),
        );
    });
  }
}