import 'package:flutter/material.dart';

var defaultBackgroundColor = const Color.fromARGB(255, 190, 190, 190);
var appBarColor = Colors.grey[900];
var myAppBar = AppBar(
  backgroundColor: appBarColor,
  title: const Text(' Salut ', style: TextStyle(color: Colors.white)),
  centerTitle: false,
);

var drawerTextColor = TextStyle(
  color: Colors.grey[300],
);
var borduresBox = Border.all(
  color: const Color.fromARGB(255, 35, 44, 207),
  width: 5.0,
  style: BorderStyle.solid,
);

var tilePadding = const EdgeInsets.only(left: 8.0, right: 8, top: 8);
var myDrawer = Drawer(
  backgroundColor: Colors.grey[300],
  elevation: 0,
  child: Column(
    children: [
      const DrawerHeader(
        child: Icon(
          Icons.favorite,
          size: 64,
        ),
      ),
      Padding(
        padding: tilePadding,
        child: SizedBox(
          child: ListTile(
            leading: const Icon(Icons.home),
            title: Text(
              'D A S H B O A R D',
              style: drawerTextColor,
            ),
          ),
        ),
      ),
    ],
  ),
);
