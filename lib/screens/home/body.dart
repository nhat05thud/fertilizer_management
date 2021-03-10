import 'package:fertilizer_management/components/customer_item.dart';
import 'package:fertilizer_management/components/report_day.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatefulWidget {
  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: new EdgeInsets.symmetric(horizontal: 15),
            height: 180,
            child: ListView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: [
                ReportDay(),
                ReportDay(),
                ReportDay(),
                ReportDay(),
              ],
            ),
          ),
          Container(
            padding: new EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Text(
              "Lịch sử giao dịch".toUpperCase(),
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            padding: new EdgeInsets.symmetric(horizontal: 15),
            child: Wrap(
              children: [
                CustomerItem(),
                CustomerItem(),
                CustomerItem(),
                CustomerItem(),
                CustomerItem(),
                CustomerItem(),
                CustomerItem(),
                CustomerItem(),
                CustomerItem(),
                CustomerItem(),
                CustomerItem(),
                CustomerItem(),
                CustomerItem(),
                CustomerItem(),
                CustomerItem(),
                CustomerItem(),
                CustomerItem(),
                CustomerItem(),
                CustomerItem(),
                CustomerItem(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
