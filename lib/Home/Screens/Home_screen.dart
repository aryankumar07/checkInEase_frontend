import 'package:checkinease/Constants/category_const.dart';
import 'package:checkinease/Home/Screens/booking-details.dart';
import 'package:checkinease/Home/widgets/category_bar.dart';
import 'package:checkinease/Home/widgets/product_list.dart';
import 'package:checkinease/Home/widgets/top_bar.dart';
import 'package:checkinease/dummy_data/hotels_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _categorySelected = 'Tiny Homes';
  var hotels = [];


  @override
  void initState() {
    super.initState();
    for(int i=0;i<HotelData.hotels.length;i++){
      if(HotelData.hotels[i]['category']==_categorySelected){
        hotels.add(HotelData.hotels[i]);
      }
    }
  }

  void updateState(int index){
    setState(() {
      hotels.clear();
      _categorySelected = CategoryConst.CategoryList[index]['name'];
      for(int i=0;i<HotelData.hotels.length;i++){
        if(HotelData.hotels[i]['category']==_categorySelected){
          hotels.add(HotelData.hotels[i]);
        }
      }
    });
  }


  // this code not working for bluring the background of the app instead a cupertino model is used
  // void ShowAlertDilogue(){
  //   showDialog(
  //     context: context, 
  //     barrierColor: Colors.white.withOpacity(0.1),
  //     builder: (context){
  //       return BackdropFilter(
  //         filter: ImageFilter.blur(
  //           sigmaX: 5,
  //           sigmaY: 5,
  //         ),
  //         child: AlertDialog(
  //           content: SizedBox(
  //             width: MediaQuery.of(context).size.width,
  //             height: MediaQuery.of(context).size.height,
  //             child: Container(
  //               decoration: BoxDecoration(
  //                 borderRadius: BorderRadius.all(Radius.circular(12))
  //               ),
  //               child: Text('working'),
  //             ),
  //           )
  //         ),
  //         );
  //     });
  // }

  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        margin: EdgeInsets.only(bottom: 15),
        child: FloatingActionButton.extended(
          onPressed: (){},
          disabledElevation: 0.0,
          tooltip: 'Open The Map',
          backgroundColor: Colors.black,
          label: Text(
            'Map',
            style: TextStyle(
              color: Colors.white
            ),
          ),
          icon: Icon(Icons.map,color: Colors.white,),
          ),
      ),
        floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      body: Column(
            children: [
              Card(
                elevation: 1,
                child: Column(
                  children: [
                     Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: GestureDetector(
                          onTap: (){
                            showCupertinoModalPopup(
                              context: context, 
                              builder: (context)=>BookingDetail());
                          },
                          child: topBar()),
                      ),
                      CategoryBar(onPressed: (index){
                        updateState(index);
                      },),
                  ],
                ),
              ),
              if(hotels.length==0)...[
                SizedBox(child: Text('Nothing'),)
              ]else...[
                Expanded(
                  child: ListView.builder(
                    itemCount: hotels.length,
                    itemExtent: 500,
                    itemBuilder: (context,index){
                      return ProductList(hotel_info: hotels[index] as Map<String,dynamic>);
                    }),
                )
              ]
            ],
          ),
    );
  }
}