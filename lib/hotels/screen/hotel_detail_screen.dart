import 'package:checkinease/Constants/Global_color.dart';
import 'package:checkinease/hotels/widgets/main_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HotelDetalScreen extends StatefulWidget{

  static const routeName = 'home/hotel-detail';

  Map<String,dynamic> hotelInfo;

  HotelDetalScreen({
    super.key,
    required this.hotelInfo
  });

  @override
  State<HotelDetalScreen> createState() => _HotelDetalScreenState();
}

class _HotelDetalScreenState extends State<HotelDetalScreen> {

  var month = DateTime.now().month;
  final monthToString = {
    1 : 'Jan',
    2 : 'Feb',
    3 : 'Mar',
    4 : 'Apr',
    5 : 'May',
    6 : 'Jun',
    7 : 'Jul',
    8 : 'Aug',
    9 : 'Sep',
    10 : 'Oct',
    11 : 'Nov',
    12 : 'Dec',
  };

  // @override
  // void initState() {
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            label: "",
            icon: Container(
              padding: EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  Text(
                    '\$${widget.hotelInfo['price']} night',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  TextButton(
                    onPressed: (){}, 
                    child: Text(
                      '${DateTime.now().day} ${monthToString[month]}',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.black,
                      ),
                      )
                      )
                ],
              ),
            )),
          BottomNavigationBarItem(
            label: "",
            icon: Container(
              child: ElevatedButton(
                onPressed: (){}, 
                style: ElevatedButton.styleFrom(
                  backgroundColor: GlobalColor.defaultButtonColor,
                ),
                child: Text(
                  'Reserve',
                  style: TextStyle(
                    color: Colors.white
                  ),
                  )),
            ))
        ]),
      body: MainDetailScreen(hotelInfo: widget.hotelInfo)
    );
  }
}