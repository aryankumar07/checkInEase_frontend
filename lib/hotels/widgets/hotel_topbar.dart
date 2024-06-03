import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HotelTopBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: IconButton(
                onPressed: (){
                  Navigator.of(context).pop();
                },
                 icon: Icon(
                  Icons.arrow_back_ios_rounded,
                  color: Colors.black,
                  size: 16,
                 ))
            ),
          ),
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                child: IconButton(
                  onPressed: (){}, 
                  icon: Icon(
                    Icons.ios_share,
                    color: Colors.black,
                    size: 16,
                  )),
              ),
              SizedBox(width: 10,),
              CircleAvatar(
                backgroundColor: Colors.white,
                child: IconButton(
                  onPressed: (){}, 
                  icon: Icon(
                    Icons.heart_broken,
                    color: Colors.black,
                    size: 16,
                  )),
              ),
            ],
          ),
        )
      ],
    );
  }
}