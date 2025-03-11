import 'package:flutter/material.dart';

class MyTile extends StatelessWidget {
  const MyTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        alignment: Alignment.center,
        height: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), 
            color: const Color.fromARGB(255, 123, 105, 105)),
      ),
    );
  }
}
