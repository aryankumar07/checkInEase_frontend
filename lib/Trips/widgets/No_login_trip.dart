import 'package:checkinease/auth/screens/login_signup_screen.dart';
import 'package:checkinease/common/custom_button_1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NoLoginTripScreen extends StatelessWidget{

  void ShowbottomSheet(BuildContext context){
    showModalBottomSheet<void>
    (
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16))
      ),
      isScrollControlled: true,
      enableDrag: true,
      useSafeArea: true,
      builder: (BuildContext context){
      return LoginSignupScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 50),
            child: Text(
              'Trips',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              'No Trips Yet',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              'when you are ready to plan your next trip we are here to help',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.black
              ),
            ),
          ),
          SizedBox(height: 20,),
          SizedBox(
            height: 48,
            width: 80,
            child: CustomButton1(
              text: 'Log in', 
              onPressed: ()=>ShowbottomSheet(context),
              color: Color.fromARGB(255, 230, 88, 78),
              ),
          )
        ],
      ),
    );
  }
}