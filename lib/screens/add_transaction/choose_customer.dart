import 'package:flutter/material.dart';

class ChooseCustomer extends StatefulWidget {
  ChooseCustomer({Key key, this.name}) : super(key: key);
  final String name;
  @override
  _ChooseCustomerState createState() => _ChooseCustomerState();
}

class _ChooseCustomerState extends State<ChooseCustomer> {
  var _listCustomer = [
    "Nguyễn Văn A",
    "Nguyễn Văn B",
    "Nguyễn Văn C",
    "Nguyễn Văn D",
    "Nguyễn Văn E"
  ];
  var _listCustomerForDisplay = <String>[];
  @override
  void initState() {
    setState(() {
      _listCustomerForDisplay = _listCustomer;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Center(
          child: Text("Chọn người mua"),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: _listCustomerForDisplay.length + 1,
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
            _listCustomerForDisplay = _listCustomer.where((note) {
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
          Navigator.pop(context, _listCustomerForDisplay[index]);
        },
        child: ListTile(
          title: Text(_listCustomerForDisplay[index]),
          trailing: widget.name == _listCustomerForDisplay[index]
              ? Icon(Icons.check)
              : null,
        ),
      ),
    );
  }
}
