// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:nonsense/widgets/modal_sheet.dart';
import 'package:nonsense/widgets/textfield.dart';

class PCalculatorview extends StatefulWidget {
  const PCalculatorview({super.key});

  @override
  State<PCalculatorview> createState() => _PCalculatorviewState();
}

class _PCalculatorviewState extends State<PCalculatorview> {

  TextEditingController _incomePersale = TextEditingController();
  TextEditingController _totalClicks = TextEditingController();
  TextEditingController _ctr = TextEditingController();
  TextEditingController _avgCpc = TextEditingController();

   double no_of_sale = 0.0;
   double gross_income = 0.0;
   double cost_per_click = 0.0;
   double net_profit = 0.0;
   double net_profit_per_click = 0.0;
   double revenue_per_click = 0.0;
   double profit_margin_per_click = 0.0;

  @override
  void initState() {
    _incomePersale = TextEditingController();
    _totalClicks = TextEditingController();
    _ctr = TextEditingController();
    _avgCpc = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _incomePersale.dispose();
    _totalClicks.dispose();
    _ctr.dispose();
    _avgCpc.dispose();
    super.dispose();
  }

 void ppcCalculator(BuildContext context) {
  setState(() {
    no_of_sale =double.parse(_totalClicks.text)* (double.parse(_ctr.text)/100);
    gross_income = no_of_sale * double.parse(_incomePersale.text);
    cost_per_click= double.parse(_totalClicks.text)*double.parse(_avgCpc.text);
    net_profit = gross_income - cost_per_click;
    net_profit_per_click = net_profit/ double.parse(_totalClicks.text);
    revenue_per_click = gross_income/ double.parse(_totalClicks.text);
    profit_margin_per_click = ((net_profit_per_click/revenue_per_click)*100);
  });
  // print(no_of_sale);
  // print(gross_income);
  // print(cost_per_click.round());
  // print(net_profit);
  // print(net_profit_per_click);
  // print(profit_margin_per_click);


  showModalBottomSheet(context: context,
  enableDrag: true, 
  isScrollControlled: true,
  showDragHandle: true,
  useSafeArea: true, 
  builder: (context) {
    return Container(
      height: 510,
      width: MediaQuery.of(context).size.width,
      // padding: const EdgeInsets.all(5),
      child:  ModalSheet(
        no_of_sale: no_of_sale.toString(),
        gross_income: gross_income.round().toString(),
        cost_per_click: cost_per_click.round().toString(),
        net_profit: net_profit.round().toString(),
        net_profit_per_click: net_profit_per_click.round().toString(),
        profit_margin_per_click: profit_margin_per_click.round().toString(),

        ),);
  });
}


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text("PPC Calculator", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
      ),
      body:  Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          
          children: [
            const Center(child: Text("Instructions")),
      
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MyTextfield(controller: _incomePersale, helperText: "Income per sale"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MyTextfield(controller: _totalClicks, helperText: "Total number of clicks"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MyTextfield(controller: _ctr, helperText: "Conversion ratio", ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MyTextfield(controller: _avgCpc, helperText: "Average cost per click"),
            ),
      
            ElevatedButton(onPressed: (){
              
              ppcCalculator(context);
            }, child: const Text("Calculate")),
          ],
        ),
      ),
    );
  }
}