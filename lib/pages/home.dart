import 'package:flutter/material.dart';
import 'package:nonsense/pages/calculators/adrevenue_calculator.dart';
import 'package:nonsense/pages/calculators/calories_calculator.dart';
import 'package:nonsense/pages/calculators/ppc_calculator.dart';

import '../utils/constants.dart';
import '../widgets/gridbox.dart';
import 'calculators/admob_calculator.dart';

class HomepageView extends StatefulWidget {
  const HomepageView({super.key});

  @override
  State<HomepageView> createState() => _HomepageViewState();
}

class _HomepageViewState extends State<HomepageView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
          
          children: [
            spacer,
            //text
            const Center(
              child: Text("Browse Calculators",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
            ),
            spacer,
            // grid
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                scrollDirection: Axis.vertical,
                children:   [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Gridbox(
                      
                      title: "AdMob Calculator",
                      action: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const AdmobCalculator()));
                      }, color: Colors.deepPurple,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Gridbox(
                      title: "PPC calculator",
                      action: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const PCalculatorview()));
                      },
                      color: Colors.deepPurple,
                    ),
                  ),
                   Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Gridbox(
                      title: "Calories Calculator",
                      action: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const CalorieCalcView()));
                      },
                      color: Colors.deepPurple,
                    ),
                  ),
                   Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Gridbox(
                      title: "Ad revenue Calculator",
                      action: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const AdRevenueCalcView()));
                      },
                      color: Colors.deepPurple,
                    ),
                  ),
                  
                ],),
              ),
            )
            ],
          
        ),
    );
  }
}