import 'package:flutter/material.dart';

class ReportDay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [Color(0xFF50C9C3), Color(0xFF96DEDA)],
        ),
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.grey.withOpacity(0.2),
        //     spreadRadius: 2,
        //     blurRadius: 8,
        //     offset: Offset(0, 0),
        //   )
        // ],
      ),
      margin: new EdgeInsets.fromLTRB(0, 15, 15, 15),
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hôm nay",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 100,
            height: 5,
          ),
          Text(
            "1,000,000 VNĐ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
