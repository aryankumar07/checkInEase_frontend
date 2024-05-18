import 'package:flutter/material.dart';

class NoWish extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 50),
              padding: EdgeInsets.all(10),
              child: Text(
                'Wishlists',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Colors.black,
                ),
                ),
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(left: 20),
              child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Create Your First Whislist',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 26,
                        color: Colors.black
                      ),
                    ),
                    Text(
                      'As You Search , tap the heart icon to save your davourite places and experience to a wishlist',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
            )
          ],
        ),
      ),
    );
  }
}