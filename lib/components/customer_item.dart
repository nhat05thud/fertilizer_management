import 'package:flutter/material.dart';

class CustomerItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
        child: GestureDetector(
          onTap: () {
            print("tap on customer item");
          },
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
}
