import 'package:flutter/material.dart';

class AdRevenueCalcView extends StatefulWidget {
  const AdRevenueCalcView({super.key});

  @override
  State<AdRevenueCalcView> createState() => _AdRevenueCalcViewState();
}

class _AdRevenueCalcViewState extends State<AdRevenueCalcView> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text("Ad Revenue Calculator", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
      ),
      body: const Column(
        children: [
          Center(child: Text("Under Construction"))
        ],
      ),
    );
  }
}