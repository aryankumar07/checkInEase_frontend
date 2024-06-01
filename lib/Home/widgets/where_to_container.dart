import 'package:checkinease/Constants/category_const.dart';
import 'package:flutter/material.dart';

class WhereTo extends StatefulWidget{

  final TextEditingController loactionController;
  final GlobalKey<FormState> locationformKey;

  WhereTo({
    super.key,
    required this.loactionController,
    required this.locationformKey,
  });

  @override
  State<WhereTo> createState() => _WhereToState();
}

class _WhereToState extends State<WhereTo> {

  // @override
  // void dispose() {
  //   // TODO: implement dispose
  //   widget.loactionController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 400,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Where To?',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),
                ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                border: Border.all(
                  color: Colors.black
                )
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Icon(Icons.search),
                  ),
                  SizedBox(width: 5,),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: TextFormField(
                        key: widget.locationformKey,
                        controller: widget.loactionController,
                        maxLines: 1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Expanded(
              child: ListView.builder(
                        itemCount: CategoryConst.LocationList.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context,index){
                          return Column(
                              children: [
                                Container(
                                  height: 150,
                                  width: 150,
                                  margin: EdgeInsets.symmetric(horizontal: 20),
                                  child: Image.asset(
                                    CategoryConst.LocationList[index]['map_image'],
                                    fit: BoxFit.fitWidth,),
                                ),
                                Text(CategoryConst.LocationList[index]['name'])
                              ],
                            );
                        }),
            ),
          ],
        ),
      ),
    );
  }
}