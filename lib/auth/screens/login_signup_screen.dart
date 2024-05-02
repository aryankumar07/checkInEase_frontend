import 'package:checkinease/Constants/Global_color.dart';
import 'package:checkinease/common/custom_button_1.dart';
import 'package:checkinease/common/custom_button_2.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class LoginSignupScreen extends StatefulWidget{
  @override
  State<LoginSignupScreen> createState() => _LoginSignupScreenState();
}

class _LoginSignupScreenState extends State<LoginSignupScreen> {

  bool _default = true;

  final _emailformKey = GlobalKey<FormState>();
  final _phoneformkey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  void changeField(){
    print('pressed the button');
    setState(() {
      _default = !_default;
      // if(_default==true){
      //   _default=false;
      // }else{
      //   _default=true;
      // }
    });
  }

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 0.9,
      child: Container(
        height: 200,
        child: Column(
          children: [
            ListTile(
              onTap: (){
                Navigator.pop(context);
              },
              leading: Icon(Icons.remove),
              title: Padding(
                padding: const EdgeInsets.only(
                  left: 90
                ),
                child: Text(
                  'Log in or sign up',
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                  ),
              ),
            ),

            Container(
              height: 0.5,
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
            ),

            SizedBox(height: 20,),

            if(_default)...[
              Form(
              key: _emailformKey,

              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    TextFormField(
                      controller: _emailController,
                      maxLines: 1,
                      decoration: InputDecoration(
                        hintText: 'Email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          borderSide: BorderSide(
                            color: Colors.black
                          )
                        ),
                        // enabledBorder:  OutlineInputBorder(
                        //   borderSide: BorderSide(
                        //     color: Colors.black
                        //   )
                        // ),
                      ),
                      validator: (value){
                        if(value==null || value.trim().isEmpty){
                          return 'enter a valid Email';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 30,),
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: CustomButton1(
                        text: 'Continue', 
                        onPressed: (){
                          if(_emailformKey.currentState!.validate()){
                            print('going to a new screen');
                          }
                        },
                        color: GlobalColor.defaultButtonColor,
                        ),
                    )
                  ],
                ),
              )),
            ],

            if(!_default)...[
              Form(
                key: _phoneformkey,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [

                      IntlPhoneField(
                        flagsButtonPadding: EdgeInsets.all(8),
                        dropdownIconPosition: IconPosition.trailing,
                        decoration: InputDecoration(
                          labelText: 'Phone Number',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(16)),
                            borderSide: BorderSide(
                              color: Colors.black,
                            )
                          )
                        ),
                        initialCountryCode: 'IN',
                        onChanged: (phone){
                          print(phone.completeNumber);
                        },
                        onCountryChanged: (country){
                          print('country changed to ${country.name}');
                        },
                      ),

                      // TextFormField(
                      //   keyboardType: TextInputType.number,
                      //   controller: _phoneController,
                      //   maxLines: 1,
                      //   decoration: InputDecoration(
                      //     hintText: 'Phone NUmber',
                      //     border: OutlineInputBorder(
                      //       borderRadius: BorderRadius.all(Radius.circular(16)),
                      //       borderSide: BorderSide(
                      //         color: Colors.black,
                      //       )
                      //     ),
                      //     // enabledBorder: OutlineInputBorder(
                      //     //   borderSide: BorderSide(
                      //     //     color: Colors.black
                      //     //   )
                      //     // )
                      //   ),
                      //   validator: (value){
                      //     if(value==null || value.trim().isEmpty){
                      //       return 'Please enter a valid phone Numeber';
                      //     }
                      //     return null;
                      //   },
                      // ),

                      SizedBox(height: 10,),

                      Text(
                        'we will call or text you to confirm your number. Standard message and data rates apply'
                      ),

                      SizedBox(height: 5,),

                      SizedBox(
                        height: 50,
                        width: double.infinity,
                        child: CustomButton1(
                          text: 'Continue', 
                          color: GlobalColor.defaultButtonColor,
                          onPressed: (){}),
                      )
                    ],
                  ),
                ))
            ],

              Row(
                children: [
                  Text(
                    '-------------------------------------------------',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.normal
                    ),
                  ),
                  Text(
                    'or',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                      fontWeight: FontWeight.normal
                    ),
                  ),
                  Text(
                    '-------------------------------------------------',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.normal
                    ),
                  ),
                ],
              ),

              SizedBox(height: 30,),

              if(_default)...[
                Padding(
                padding: const EdgeInsets.all(16),
                child: CustomButton2(
                  onPressed: ()=>changeField(),
                  icon: FontAwesomeIcons.mobile, 
                  text: 'Continue with Phone'),
              ),
              ],
              if(!_default)...[
                Padding(
                padding: const EdgeInsets.all(16),
                child: CustomButton2(
                  onPressed: ()=>changeField(),
                  icon: FontAwesomeIcons.mobile, 
                  text: 'Continue with Email'),
              ),
              ],
              Padding(
                padding: const EdgeInsets.all(16),
                child: CustomButton2(
                  onPressed: (){},
                  icon: FontAwesomeIcons.google,
                  color: Colors.green,
                  text: 'Continue with Google'),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: CustomButton2(
                  onPressed: (){},
                  icon: Icons.facebook,
                  color: Colors.blue,
                  text: 'Continue with Facebook'),
              ),
          ],
        )
      ),
    );
  }
}