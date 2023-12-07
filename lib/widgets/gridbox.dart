import 'package:flutter/material.dart';
import 'package:nonsense/utils/constants.dart';

class Gridbox extends StatelessWidget {
  const Gridbox( {super.key, required this.title, required this.action,required this.color ,});
 final String title;
 final VoidCallback action;
  final Color color  ;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: action,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(24),
        ),
        height: 200,
        width: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: Text(title, style: const TextStyle(fontSize: 19, fontWeight: FontWeight.bold, color: Colors.white),)),
            ),
            spacer,
            Center(child: IconButton(onPressed:action ,color: Colors.white, icon: const Icon(Icons.arrow_circle_right_outlined)))
          ],
        ),
      ),
    );
  }
}