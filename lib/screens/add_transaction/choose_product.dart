import 'package:flutter/material.dart';

class ChooseProduct extends StatefulWidget {
  ChooseProduct({Key key, this.listProductsChoise}) : super(key: key);

  final List<String> listProductsChoise;

  @override
  _ChooseProductState createState() => _ChooseProductState();
}

class _ChooseProductState extends State<ChooseProduct> {
  var _listProducts = [
    "Sản phẩm 1",
    "Sản phẩm 2",
    "Sản phẩm 3",
    "Sản phẩm 4",
    "Sản phẩm 5",
    "Sản phẩm 6",
    "Sản phẩm 7",
    "Sản phẩm 8",
    "Sản phẩm 9",
    "Sản phẩm 10"
  ];
  var _listChoise = <String>[];
  var _listProductsForDisplay = <String>[];
  @override
  void initState() {
    setState(() {
      _listChoise = widget.listProductsChoise;
      _listProductsForDisplay = _listProducts;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Center(
          child: Text("Chọn sản phẩm"),
        ),
        actions: [
          IconButton(
            color: Colors.black,
            icon: Icon(
              Icons.check,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context, _listChoise);
            },
          ),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: _listProductsForDisplay.length + 1,
        itemBuilder: (BuildContext context, int index) {
          return index == 0 ? _searchBar() : _listItem(index - 1);
        },
      ),
    );
  }

  _searchBar() {
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Tìm kiếm...",
        ),
        onChanged: (text) {
          text = text.toLowerCase();
          setState(() {
            _listProductsForDisplay = _listProducts.where((note) {
              var noteTitle = note.toLowerCase();
              return noteTitle.contains(text);
            }).toList();
          });
        },
      ),
    );
  }

  _listItem(index) {
    return Container(
      padding: new EdgeInsets.all(10),
      margin: new EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: GestureDetector(
        onTap: () {
          setState(() {
            _listChoise.add(_listProductsForDisplay[index]);
          });
        },
        child: ListTile(
          title: Text(_listProductsForDisplay[index]),
          trailing: _listChoise.contains(_listProductsForDisplay[index])
              ? Icon(Icons.check)
              : null,
        ),
      ),
    );
  }
}
