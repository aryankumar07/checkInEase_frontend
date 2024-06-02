import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class ShowCalender extends StatefulWidget{

  VoidCallback onPressed;

  ShowCalender({
    super.key,
    required this.onPressed,
  });

  @override
  State<ShowCalender> createState() => _ShowCalenderState();
}

class _ShowCalenderState extends State<ShowCalender> {


  DateTime? _startdate;
  DateTime? _enddate;

  void setRange(DateTime? start,DateTime? end,DateTime? focusedDay){
    setState(() {
      _startdate = start;
      _enddate = end;
    });
  }

  void shiftToNext(){
    print('entered here');
    widget.onPressed;
  }


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(12))
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top:20,left: 30),
              child: Text(
                'When\'s your trip?',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                ),
                ),
            ),
              Container(
                child: TableCalendar(
                  focusedDay: DateTime.now(), 
                  firstDay: DateTime.utc(2010,10,16), 
                  lastDay: DateTime.utc(2030,10,16),
                  rangeStartDay: _startdate,
                  rangeEndDay: _enddate,
                  onRangeSelected: setRange,
                  rangeSelectionMode: RangeSelectionMode.toggledOn,
                  ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    onPressed: shiftToNext, 
                    child: Text(
                      'Skip',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 16,
                        color: Colors.black
                      ),
                    )),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black
                      ),
                      onPressed: (){}, 
                      child: Text(
                        'Next',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white
                        ),
                      ))
                ],
              )
          ],
        ),
      ),
    );
  }
}