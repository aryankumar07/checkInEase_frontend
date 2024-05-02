import 'package:checkinease/Constants/category_const.dart';
import 'package:checkinease/Home/widgets/category_bar.dart';
import 'package:checkinease/Home/widgets/top_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                      padding: const EdgeInsets.only(top: 40),
                      child: topBar(),
                    ),
                    CategoryBar(onPressed: (index){
                      print(CategoryConst.CategoryList[index]['name']);
                    },)
                ],
              ),
            ),
          ],
        ),
    );
  }
}