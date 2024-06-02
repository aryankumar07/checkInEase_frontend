import 'package:flutter/material.dart';

class SerivceDogSheet extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(width: 10,),
            IconButton(
              onPressed: (){
                Navigator.of(context).pop();
              },
               icon: Icon(Icons.remove)
               ),
            SizedBox(width: 60,),
            Container(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                'Service animals',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
                ),
            )
          ],
        ),
        Container(
          height: 300,
          width: double.infinity,
          child: Image.asset(
            'assets/images/service_dog.jpg',
            fit: BoxFit.fill,
            ),
        ),
        SizedBox(height: 20,),
        Container(
          padding: EdgeInsets.all(20),
          child: Text(
            'Service Animals are not pets so their is no need to add them here',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w300
            ),
          ),
        ),
        SizedBox(height: 20,),
      ],
    );
  }
}