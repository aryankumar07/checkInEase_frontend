import 'package:flutter/material.dart';

class CustomButton1 extends StatelessWidget{
  final String text;
  final Color? color;
  VoidCallback onPressed;

  CustomButton1({
    required this.text,
    required this.onPressed,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: color==null? Colors.white : color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16))
        )

      ), 
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white
        ),
        ));
  }
}