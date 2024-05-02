import 'package:flutter/material.dart';

class topBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(40)),
            ),
            child: Container(
              height: 60,
              width: MediaQuery.of(context).size.width-90,
              child: Row(
                children: [
                  SizedBox(width: 20,),
                  Icon(
                    Icons.search,
                    size: 28,
                    color: Colors.black,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Where to?',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'Anywhere. Any week. Add guests',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: Colors.grey,
                            ),
                          )
                        ],
                      ),
                    )
                ],
              )
            )
          ),
          Container(
            margin: EdgeInsets.only(
              right: 10
            ),
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.black,
              ),
            ),
            child: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.filter_list,
                color: Colors.black,
                ),
            ),
          )
        ],
      ),
    );
  }
}