import 'package:checkinease/Constants/Global_color.dart';
import 'package:checkinease/auth/screens/login_signup_screen.dart';
import 'package:checkinease/common/custom_button_1.dart';
import 'package:flutter/material.dart';

class NotLogin extends StatelessWidget{

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
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 50),
                child: Text(
                  'Profile',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
          
              SizedBox(height: 10,),
          
              Text(
                'Log in to start planning your next trip',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  fontWeight: FontWeight.normal
                ),
              ),

              SizedBox(height: 20,),
      
              SizedBox(
                height: 50,
                width: double.infinity,
                child: CustomButton1(
                  text: 'Log in', 
                  onPressed: ()=>ShowbottomSheet(context),
                  color: GlobalColor.defaultButtonColor,
                  )
              ),

              SizedBox(height: 10,),

              Row(
                children: [
                  Text(
                    "Don't have an account?"
                  ),
                  TextButton(
                    onPressed: ()=>ShowbottomSheet(context), 
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                        color: Colors.black,
                        decoration: TextDecoration.underline,
                      ),
                      )),
                ],
              ),

              SizedBox(height: 20,),

              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16))
                ),
                elevation: 10,
                child: Container(
                  height: 100,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                          top: 20,
                          left: 20,
                          right: 10,
                          bottom: 10
                        ),
                        child: Column(
                          children: [
                            Text(
                              'Check In your Place',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                                fontSize: 18,
                              ),
                              ),
                            SizedBox(height: 10,),
                            Text('it is simple to set and earn')
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 40),
                        height: 95,
                        width: 100,
                        child: Image.asset('assets/images/rent_a_house.png'),
                      )
                    ],
                  ),
                ),
              ),

              SizedBox(height: 10,),

              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                trailing: Icon(Icons.arrow_forward),
              ),
              Container(
                height: 0.5,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey
                ),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Accessibility'),
                trailing: Icon(Icons.arrow_forward),
              ),
              Container(
                height: 0.5,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey
                ),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Get help'),
                trailing: Icon(Icons.arrow_forward),
              ),

            ],
          ),
      ),
    );
  }
}