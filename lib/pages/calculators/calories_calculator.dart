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
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text("Calorie Calculator", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
      ),
      body: const Column(
        children: [
          Center(child: Text("Under Construction"))
        ],
      ),
    );
  }
}