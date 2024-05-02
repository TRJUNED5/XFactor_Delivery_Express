import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:project/models/deliveryinfo.dart';
import 'package:project/screens/detail/detail.dart';
import 'package:project/screens/home/widget/customer_item.dart';

class CustomerListView extends StatelessWidget {
  final int selected;
  final Function callback;
  final PageController pageController;
  final DeliveryBoy deliveryboy;
  CustomerListView(
      this.selected, this.callback, this.pageController, this.deliveryboy);

  @override
  Widget build(BuildContext context) {
    final category = deliveryboy.menu.keys.toList();
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: PageView(
        controller: pageController,
        onPageChanged: (index) => callback(index),
        children: category
            .map((e) => ListView.separated(
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => DetailPage(
                              deliveryboy.menu[category[selected]]![index])));
                    },
                    child:
                        CustomerItem(deliveryboy.menu[category[selected]]![index])),
                separatorBuilder: (_, index) => SizedBox(height: 15),
                itemCount: deliveryboy.menu[category[selected]]!.length))
            .toList(),
      ),
    );
  }
}
