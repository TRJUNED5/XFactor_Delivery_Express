import 'package:flutter/material.dart';
import 'package:project/constant.dart';
import 'package:project/models/Customer.dart';
import 'package:project/screens/detail/widget/customer_detail.dart';
import 'package:project/screens/detail/widget/customer_image.dart';
import 'package:project/widgets/custome_app_bar.dart';

class DetailPage extends StatelessWidget {
  final Customer customer;
  DetailPage(this.customer);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomeAppBar(
              Icons.arrow_back_ios_outlined,
              Icons.favorite_outline,
              leftCallback: () => Navigator.of(context).pop(),
            ),
            CustomerImg(customer),
            CustomerDetail(customer),
          ],
        ),
      ),
      floatingActionButton: Container(
        width: 100,
        height: 56,
        child: RawMaterialButton(
            fillColor: kPrimaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            elevation: 2,
            child: Row(
              children: [
                Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.black,
                  size: 30,
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  
                )
              ],
            ),
            onPressed: () {}),
      ),
    );
  }
}
