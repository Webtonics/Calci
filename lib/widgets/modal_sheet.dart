// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

import '../utils/constants.dart';

class ModalSheet extends StatelessWidget {
  const ModalSheet({super.key, required this.no_of_sale, required this.gross_income, required this.cost_per_click, required this.net_profit, required this.net_profit_per_click, required this.profit_margin_per_click});

  final String no_of_sale;
  final String gross_income;
  final String cost_per_click;
  final String net_profit;
  final String net_profit_per_click;
  final String profit_margin_per_click;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
           
    
            Column(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               Column(
                 children: [
                   Text(no_of_sale, style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w900),),
                   const Text("Number of Sale", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                 ],
               ),
               spacer,
               
              Column(
                 children: [
                   Text("\$ $gross_income", style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w900),),
                   const Text("Gross Income", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                 ],
               ),
               spacer,Column(
                 children: [
                   Text("\$ $cost_per_click", style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w900),),
                   const Text("Cost per Click", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                 ],
               ),
               spacer,Column(
                 children: [
                   Text("\$ $net_profit", style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w900),),
                   const Text("Net Profit", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                 ],
               ),
               spacer,Column(
                 children: [
                   Text( "\$ $net_profit_per_click", style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w900),),
                   const Text("Net Profit per click", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                 ],
               ),
               spacer,
               Column(
                 children: [
                   Text("$profit_margin_per_click%", style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w900),),
                   const Text("Profit Margin per Click", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                 ],
               ),
               spacer,
             ]),
          ]
      ),
    );
  }
}