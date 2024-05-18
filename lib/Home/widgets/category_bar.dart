import 'package:checkinease/Constants/category_const.dart';
import 'package:flutter/material.dart';

class CategoryBar extends StatefulWidget{

  final void Function(int) onPressed;

  CategoryBar({
    required this.onPressed,
  });

  @override
  State<CategoryBar> createState() => _CategoryBarState();
}

class _CategoryBarState extends State<CategoryBar> {
  int _selected = 0;

  void changeState(int index){
    setState(() {
      _selected = index;
      widget.onPressed(_selected);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: CategoryConst.CategoryList.length,
        itemBuilder: (context,index){
          return GestureDetector(
            onTap: ()=>changeState(index),
            child: Container(
              margin: EdgeInsets.only(
                top: 10,
                bottom: 14,
                left: 15,
                right: 15,
              ),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: _selected==index ? Colors.black : Colors.white
                  )
                )
              ),
              child: Column(
                children: [
                  Icon(
                    CategoryConst.CategoryList[index]['icondata'],
                    color: _selected==index? Colors.black : Colors.grey,
                    size: 18,
                  ),
                  SizedBox(height: 5,),
                  Text(
                    CategoryConst.CategoryList[index]['name'],
                    style: TextStyle(
                      color: _selected==index? Colors.black : Colors.grey,
                      fontSize: 12
                    ),
                  )
                ],
              ),
            ),
          );
        }),
    );
  }
}