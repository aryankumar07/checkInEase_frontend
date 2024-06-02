import 'package:checkinease/Constants/Global_color.dart';
import 'package:checkinease/Home/widgets/select_where.dart';
import 'package:checkinease/Home/widgets/select_who.dart';
import 'package:checkinease/Home/widgets/select_who_detail.dart';
import 'package:checkinease/Home/widgets/select_when.dart';
import 'package:checkinease/Home/widgets/show_calendar.dart';
import 'package:checkinease/Home/widgets/where_to_container.dart';
import 'package:flutter/material.dart';

class BookingDetail extends StatefulWidget{

  static const RouteName = '/home/where-to';

  @override
  State<BookingDetail> createState() => _BookingDetailState();
}

class _BookingDetailState extends State<BookingDetail> {
  final _locationformKey = GlobalKey<FormState>();

  final TextEditingController _loactionController = TextEditingController();

  var current_pos = 0;
  var option1 = true;
  var option2 = false;
  var option3 = false;

  @override
  void dispose() {
    // TODO: implement dispose
    _loactionController.dispose();
    super.dispose();
  }

  void change(){
    if(current_pos==0){
      current_pos=1;
    }else{
      current_pos=0;
    }
    setState(() {});
  }

  void selectWherePop(){
    option1 = true;
    option2 = false;
    option3 = false;
    setState(() {});
  }

  void selectWhenPop(){
    option1 = false;
    option2 = true;
    option3 = false;
    setState(() {});
  }

  void selectWhoPop(){
    print('in the select who pop');
    option1 = false;
    option2 = false;
    option3 = true;
    setState(() {});
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Colors.grey.withOpacity(0.95),
        // appBar: AppBar(
        //   backgroundColor: Colors.white,
        //   leading: IconButton(
        //     onPressed: (){
        //       Navigator.of(context).pop();
        //   }, 
        //   icon: Icon(
        //     Icons.remove_circle,
        //     color: Colors.black,
        //     )),
        // ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(
                    top: 40,
                    left: 20,
                    right: 20,
                    bottom: 10
                  ),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).pop();
                        },
                        child: Icon(Icons.remove_circle)),
                      SizedBox(width: MediaQuery.of(context).size.width/4-20,),
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: current_pos==0 ? Colors.black : Colors.white
                            )
                          )
                        ),
                        child: TextButton(
                          onPressed: ()=>change(), 
                          child: Text(
                            'Stays',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18
                            ),
                            )),
                      ),
                        SizedBox(width: MediaQuery.of(context).size.width/10-40,),
                        Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: current_pos==1 ? Colors.black : Colors.white
                              )
                            )
                          ),
                          child: TextButton(
                          onPressed: ()=>change(), 
                          child: Text(
                            'Experience',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18
                            ),
                            )),
                        ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                if(option1)...[
                  WhereTo(loactionController: _loactionController, 
                  locationformKey: _locationformKey),
                ],
                if(!option1)...[
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                      right: 10,
                    ),
                    child: SelectWhere(
                      onPressed: selectWherePop,
                    ),
                  )
                ],
                SizedBox(height: 5,),
                if(!option2)...[
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                      right: 10,
                      ),
                    child: SelectWhen(onPressed: selectWhenPop,),
                  ),
                ]
                else if(option2)...[
                  ShowCalender(onPressed: selectWhoPop,)
                ],
                SizedBox(height: 5,),
                if(option3)...[
                  SelectWhoDetail()
                ],
                if(!option3)...[
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                      right: 10,
                      ),
                    child: SelectWho(onPressed: selectWhoPop,),
                  ),
                ],
                SizedBox(height: 80,),
                Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextButton(
                          onPressed: (){
                            _loactionController.text = '';
                          }, 
                          child: Text(
                            'Clear all',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              decoration: TextDecoration.underline
                            ),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ElevatedButton(
                          onPressed: (){},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: GlobalColor.defaultButtonColor
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.search),
                              Text(
                                'Search',
                              )
                            ],
                          )),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      );
  }
}