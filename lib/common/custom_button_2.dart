import 'package:flutter/material.dart';

class CustomButton2 extends StatelessWidget{
  final IconData icon;
  final String text;
  final Color? color;
  VoidCallback onPressed;

  CustomButton2({
    required this.icon,
    required this.text,
    required this.onPressed,
    this.color
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          border: Border.all(
            color: Colors.black,
          )
        ),
        child: Row(
          children: [
            SizedBox(width: 30,),
            Icon(icon,
            size: 28,
            color: color==null ? Colors.black : color,
            ),
            SizedBox(width: 70,),
            Text(
              text,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),
            )
          ],
        ),
      ),
    );
  }

}