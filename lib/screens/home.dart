import 'package:flutter/material.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    var windowSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color(0xFFF0F4FD),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        leading: Icon(Icons.menu),
        title: Center(
          child: Text(
            "Giao dịch trong ngày",
            style: TextStyle(color: Colors.black),
          ),
        ),
        actions: [
          IconButton(
            color: Colors.black,
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
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
                  reportDay(),
                  reportDay(),
                  reportDay(),
                  reportDay(),
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
                  customerItem(),
                  customerItem(),
                  customerItem(),
                  customerItem(),
                  customerItem(),
                  customerItem(),
                  customerItem(),
                  customerItem(),
                  customerItem(),
                  customerItem(),
                  customerItem(),
                  customerItem(),
                  customerItem(),
                  customerItem(),
                  customerItem(),
                  customerItem(),
                  customerItem(),
                  customerItem(),
                  customerItem(),
                  customerItem(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget reportDay() {
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

Widget customerItem() {
  return Padding(
    padding: new EdgeInsets.symmetric(vertical: 10),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 8,
            offset: Offset(0, 0),
          )
        ],
      ),
      child: Container(
        alignment: Alignment.center,
        child: ListTile(
          leading: Container(
            child: Icon(Icons.person),
            height: double.infinity,
          ),
          title: Text("Nguyễn Văn A"),
          subtitle: Text("21/12/2020"),
          trailing: Icon(Icons.arrow_right),
        ),
      ),
    ),
  );
}
