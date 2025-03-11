import 'package:flutter/material.dart';
import '../constants.dart';

class MyBox extends StatelessWidget {
  const MyBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 110, 110, 110),
              offset: const Offset(5, 5),
              blurRadius: 6,
            ),
            BoxShadow(
              color: const Color.fromARGB(255, 255, 255, 255),
              offset: const Offset(-10, -10),
              blurRadius: 10,
            ),
          ],
          // border: borduresBox,
          borderRadius: BorderRadius.circular(15),
          color: Colors.grey[400],
        ),
      ),
    );
  }
}
