import 'package:flutter/material.dart';
import 'package:project/constant.dart';
import 'package:project/models/Customer.dart';


class CustomerDetail extends StatelessWidget {
  final Customer customer;
  CustomerDetail(this.customer);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),

      child: Column(
        children: [
          Text(
            customer.name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          SizedBox(height: 15),
          
          SizedBox(height: 30),
          Row(
            children: [
              Text(
                'About',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              )
            ],
          ),
          SizedBox(height: 10),
          Text(
            customer.about,
            style: TextStyle(
              wordSpacing: 1.2,
              height: 1.5,
              fontSize: 16,
            ),
          )
        ],
      ),
    );
  }

  Widget _buildIconText(IconData icon, Color color, String text) {
    return Row(
      children: [
        Icon(
          icon,
          color: color,
          size: 20,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 16),
        )
      ],
    );
  }
}
