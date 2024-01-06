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
      backgroundColor: const Color.fromARGB(255, 230, 225, 225),
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text("Ad Revenue Calculator", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
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
      ),
    );
  }
}