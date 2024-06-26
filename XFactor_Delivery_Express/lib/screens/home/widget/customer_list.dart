import 'package:flutter/material.dart';
import 'package:project/constant.dart';
import 'package:project/models/deliveryinfo.dart';

class FoodList extends StatelessWidget {
  final int selected;
  final Function callback;
  final DeliveryBoy deliveryboy;
  FoodList(this.selected, this.callback, this.deliveryboy);
  @override
  Widget build(BuildContext context) {
    final category = deliveryboy.menu.keys.toList();
    return Container(
        height: 100,
        padding: EdgeInsets.symmetric(vertical: 30),
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: 25),
          itemBuilder: (context, index) => GestureDetector(
            onTap: () => callback(index),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: selected == index ? kPrimaryColor : Colors.white,
              ),
              child: Text(
                category[index],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          separatorBuilder: (_, index) => SizedBox(width: 20),
          itemCount: category.length,
        ));
  }
}
