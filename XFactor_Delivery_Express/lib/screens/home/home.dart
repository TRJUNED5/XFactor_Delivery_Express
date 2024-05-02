import 'package:flutter/material.dart';
import 'package:project/constant.dart';
import 'package:project/models/deliveryinfo.dart';
import 'package:project/screens/home/widget/customer_list.dart';
import 'package:project/screens/home/widget/customer_list_view.dart';
import 'package:project/screens/home/widget/deliveryboy_info.dart';
import 'package:project/widgets/custome_app_bar.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var selected = 0;
  final pageController = PageController();
  final restaurant = DeliveryBoy.generateDeliveryBoy();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomeAppBar(
            Icons.arrow_back_ios_outlined,
            Icons.search_outlined,
          ),
          RestauranInfo(),
          FoodList(selected, (int index) {
            setState(() {
              selected = index;
            });
            pageController.jumpToPage(index);
          }, restaurant),
          Expanded(
              child: CustomerListView(
            selected,
            (int index) {
              setState(() {
                selected = index;
              });
            },
            pageController,
            restaurant,
          )),
    
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: kPrimaryColor,
        elevation: 2,
        child: Icon(
          Icons.shopping_bag_outlined,
          color: Colors.black,
          size: 20,
        ),
      ),
    );
  }
}
