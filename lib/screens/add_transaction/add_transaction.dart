import 'package:fertilizer_management/screens/add_transaction/choose_customer.dart';
import 'package:fertilizer_management/screens/add_transaction/choose_product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class AddTransaction extends StatefulWidget {
  @override
  _AddTransactionState createState() => _AddTransactionState();
}

class _AddTransactionState extends State<AddTransaction> {
  String _customerName = "";

  List<String> _listProductChoise = <String>[];

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        //leading: Icon(Icons.menu),
        title: Center(
          child: Text(
            "Thêm giao dịch".toUpperCase(),
            style: TextStyle(
              fontSize: 24,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        // actions: [
        //   IconButton(
        //     color: Colors.black,
        //     icon: Icon(Icons.more_vert),
        //     onPressed: () {},
        //   ),
        // ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: GestureDetector(
                onTap: () {
                  _chooseCustomer(context);
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
                          Icons.person,
                        ),
                        height: double.infinity,
                      ),
                      minLeadingWidth: 20,
                      horizontalTitleGap: 10,
                      contentPadding: EdgeInsets.all(0),
                      title: Text(
                        _customerName == "" ? "Chọn người mua" : _customerName,
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Sản phẩm đã chọn".toUpperCase(),
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _chooseProducts(context);
                    },
                    child: Row(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Icon(
                            Icons.add,
                            size: 15,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 5),
                          child: Text("Thêm mới"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            _listProductChoise != null && _listProductChoise.length > 0
                ? Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: _listProductChoise.length,
                      itemBuilder: (BuildContext context, int index) {
                        return _newProduct(index);
                      },
                    ),
                  )
                : Center(
                    child: Text(
                      "Chưa chọn sản phẩm nào",
                      style: TextStyle(
                          fontStyle: FontStyle.italic, color: Colors.grey),
                    ),
                  ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.blue,
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Tổng",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            Text(
              "200.000.000 VNĐ",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _newProduct(index) {
    return Container(
      margin: new EdgeInsets.only(bottom: 10),
      child: Slidable(
        actionPane: SlidableDrawerActionPane(),
        actionExtentRatio: 0.2,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            border: Border.all(color: Colors.grey[200], width: 0),
          ),
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
              _listProductChoise[index],
              style: TextStyle(fontSize: 18),
            ),
            subtitle: Text("Giá: 500.000 VNĐ / 1 sản phẩm"),
            trailing: Text("Số lượng: 1"),
          ),
        ),
        secondaryActions: <Widget>[
          IconSlideAction(
            caption: 'Chỉnh sửa',
            color: Color(0xFF1389FD),
            icon: Icons.settings,
            onTap: () => {},
          ),
          IconSlideAction(
            caption: 'Xóa',
            color: Colors.red,
            icon: Icons.delete,
            onTap: () => {},
          ),
        ],
      ),
    );
  }

  _chooseCustomer(BuildContext context) async {
    // Navigator.push returns a Future that completes after calling
    // Navigator.pop on the Selection Screen.
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => ChooseCustomer(name: _customerName)),
    );

    // After the Selection Screen returns a result, hide any previous snackbars
    // and show the new result.
    if (result != null) {
      setState(() {
        _customerName = result;
      });
    }
  }

  _chooseProducts(BuildContext context) async {
    // Navigator.push returns a Future that completes after calling
    // Navigator.pop on the Selection Screen.
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) =>
              ChooseProduct(listProductsChoise: _listProductChoise)),
    );

    // After the Selection Screen returns a result, hide any previous snackbars
    // and show the new result.
    if (result != null) {
      setState(() {
        _listProductChoise = result;
      });
    }
  }
}
