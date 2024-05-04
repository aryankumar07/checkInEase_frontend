import 'package:carousel_slider/carousel_slider.dart';
import 'package:checkinease/Constants/Global_color.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductList extends StatefulWidget{

  final Map<String,dynamic> hotel_info;
  bool _fav = false;

  ProductList({
    super.key,
    required this.hotel_info,
  });

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  @override
  Widget build(BuildContext context) {

    List<String> imageUrl = widget.hotel_info['hotel_images'];

    void changeColor(){
      setState(() {
        widget._fav = !widget._fav;
      });
    }

    return Padding(
      padding: const EdgeInsets.only(left: 15,right: 15),
      child: Container(
        height: 450,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          color: GlobalColor.scaffolodWhite
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                  Container(
                    height: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      color: GlobalColor.scaffolodWhite,
                    ),
                    child:  CarouselSlider(
                    items: imageUrl.map((e) {
                      return Container(
                        margin: EdgeInsets.only(left: 10,right: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                            image: NetworkImage(e),
                            fit: BoxFit.cover
                            )
                        ),
                      );
                    }).toList(), 
                    options: CarouselOptions(
                      height: 330,
                    )),
                  ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: GestureDetector(
                    onTap: changeColor,
                    child: Icon(
                      FontAwesomeIcons.heart,
                      color: widget._fav ? Colors.red : null ,
                      ),
                  ))
              ]
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.hotel_info['name'],
                  style: TextStyle(
                    fontSize: 16,
                  ),
                  ),
                Row(
                  children: [
                    Icon(Icons.star,size: 14,),
                    Text(
                      widget.hotel_info['total_rating'].toString(),
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(height: 5,),
            Text(
              widget.hotel_info['location'],
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 5,),
            Text(
              '${widget.hotel_info['price'].toString()} night',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        )
      ),
    );
  }
}