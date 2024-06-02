import 'package:checkinease/Home/widgets/service_dog_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SelectWhoDetail extends StatelessWidget{


  Widget ServiceDogPop(){
    return SerivceDogSheet();
  }


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 400,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(12))
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(25),
              child: Text(
                'Who\'s coming?',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),

            // Adults
            Padding(
              padding: const EdgeInsets.only(left:20.0,right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Adults',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400
                          ),
                        ),
                        Text(
                          'Ages 13 or above',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.normal
                          ),
                          )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        // height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            color: Colors.black54
                          )
                        ),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: IconButton(
                            onPressed: (){}, 
                            icon: Icon(Icons.remove)),
                        ),
                      ),
                      SizedBox(width: 5,),
                      Text(
                        '0',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold
                        ),
                        ),
                      SizedBox(width: 5,),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            color: Colors.black54
                          )
                        ),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: IconButton(
                            onPressed: (){}, 
                            icon: Icon(Icons.add)),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:20.0,right: 20,top: 10,bottom: 15),
              child: Container(
                height: 1,
                decoration: BoxDecoration(
                  color: Colors.grey
                ),
              ),
            ),
            
            // Children
            Padding(
              padding: const EdgeInsets.only(left:20.0,right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Children',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400
                          ),
                        ),
                        Text(
                          'Ages 2 - 12',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.normal
                          ),
                          )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            color: Colors.black54
                          )
                        ),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: IconButton(
                            onPressed: (){}, 
                            icon: Icon(Icons.remove)),
                        ),
                      ),
                      SizedBox(width: 5,),
                      Text(
                        '0',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold
                        ),
                        ),
                      SizedBox(width: 5,),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            color: Colors.black54
                          )
                        ),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: IconButton(
                            onPressed: (){}, 
                            icon: Icon(Icons.add)),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:20.0,right: 20,top: 10,bottom: 15),
              child: Container(
                height: 1,
                decoration: BoxDecoration(
                  color: Colors.grey
                ),
              ),
            ),

            // Infants
            Padding(
              padding: const EdgeInsets.only(left:20.0,right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Infants',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400
                          ),
                        ),
                        Text(
                          'Under 2',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.normal
                          ),
                          )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            color: Colors.black54
                          )
                        ),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: IconButton(
                            onPressed: (){}, 
                            icon: Icon(Icons.remove)),
                        ),
                      ),
                      SizedBox(width: 5,),
                      Text(
                        '0',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold
                        ),
                        ),
                      SizedBox(width: 5,),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            color: Colors.black54
                          )
                        ),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: IconButton(
                            onPressed: (){}, 
                            icon: Icon(Icons.add)),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:20.0,right: 20,top: 10,bottom: 15),
              child: Container(
                height: 1,
                decoration: BoxDecoration(
                  color: Colors.grey
                ),
              ),
            ),

            // pets
            Padding(
              padding: const EdgeInsets.only(left:20.0,right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Pets',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400
                          ),
                        ),
                        GestureDetector(
                          onTap: () => showModalBottomSheet(
                            enableDrag: true,
                            isScrollControlled: true,
                            context: context,
                            builder: (context)=> ServiceDogPop()
                          ),
                          child: Text(
                            'Bringing a sevice pet',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 12,
                              fontWeight: FontWeight.normal
                            ),
                            ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            color: Colors.black54
                          )
                        ),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: IconButton(
                            onPressed: (){}, 
                            icon: Icon(Icons.remove)),
                        ),
                      ),
                      SizedBox(width: 5,),
                      Text(
                        '0',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold
                        ),
                        ),
                      SizedBox(width: 5,),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            color: Colors.black54
                          )
                        ),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: IconButton(
                            onPressed: (){}, 
                            icon: Icon(Icons.add)),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:20.0,right: 20,top: 10),
              child: Container(
                height: 1,
                decoration: BoxDecoration(
                  color: Colors.grey
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}