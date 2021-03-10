import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black),
      //leading: Icon(Icons.menu),
      title: Center(
        child: Text(
          "Giao dịch trong ngày",
          style: TextStyle(color: Colors.black),
        ),
      ),
      // actions: [
      //   IconButton(
      //     color: Colors.black,
      //     icon: Icon(Icons.more_vert),
      //     onPressed: () {},
      //   ),
      // ],
    );
  }
}
