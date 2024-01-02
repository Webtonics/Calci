import 'package:flutter/material.dart';

class CalorieCalcView extends StatefulWidget {
  const CalorieCalcView({super.key});

  @override
  State<CalorieCalcView> createState() => _CalorieCalcViewState();
}

class _CalorieCalcViewState extends State<CalorieCalcView> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color.fromARGB(255, 230, 225, 225),
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text("Calorie Calculator", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
          child: Container(
              decoration:  BoxDecoration( color: Colors.white, borderRadius: BorderRadius.circular(23)),
               alignment: Alignment.center,
             
             width: 500,
            child: const Column(
           children: [
             Center(child: Text("Under Construction"))
           ],
            ),
          ),
        ),
      ));
  }
}