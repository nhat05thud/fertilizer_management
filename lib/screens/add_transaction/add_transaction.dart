import 'package:flutter/material.dart';

class AddTransaction extends StatefulWidget {
  @override
  _AddTransactionState createState() => _AddTransactionState();
}

class _AddTransactionState extends State<AddTransaction> {
  String dropdownValue = "1";
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: new EdgeInsets.symmetric(vertical: 20),
            child: Center(
              child: Text(
                "Thêm giao dịch".toUpperCase(),
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: GestureDetector(
              onTap: () {
                print("tap to choose customer");
              },
              child: Container(
                padding: new EdgeInsets.only(left: 10, right: 10),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.grey[200], width: 0),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: ListTile(
                    leading: Container(
                      child: Icon(
                        Icons.person_add,
                      ),
                      height: double.infinity,
                    ),
                    minLeadingWidth: 20,
                    horizontalTitleGap: 10,
                    contentPadding: EdgeInsets.all(0),
                    title: Text(
                      "Chọn người mua",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 5),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Text(
              "Sản phẩm đã chọn".toUpperCase(),
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 9,
                  child: GestureDetector(
                    onTap: () {
                      print("tap to choose customer");
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: 15),
                      padding: new EdgeInsets.only(left: 10, right: 10),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.grey[200], width: 0),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: ListTile(
                          leading: Container(
                            child: Icon(
                              Icons.eco,
                            ),
                            height: double.infinity,
                          ),
                          minLeadingWidth: 20,
                          horizontalTitleGap: 10,
                          contentPadding: EdgeInsets.all(0),
                          title: Text(
                            "Sản phẩm 1",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 18),
                      filled: true,
                      fillColor: Colors.grey[200],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                    ),
                    initialValue: "1",
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [Text("Tổng")],
            ),
          )
        ],
      ),
    );
  }
}
