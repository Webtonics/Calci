import 'package:flutter/material.dart';
import 'package:nonsense/utils/constants.dart';
import 'package:nonsense/widgets/textfield.dart';

class AdmobCalculator extends StatefulWidget {
  const AdmobCalculator({super.key});

  @override
  State<AdmobCalculator> createState() => _AdmobCalculatorState();
}

class _AdmobCalculatorState extends State<AdmobCalculator> {
   TextEditingController _dailyUsers = TextEditingController();
   TextEditingController _cpmValue = TextEditingController();
   TextEditingController  _pageviewPerUser = TextEditingController();
  
  
   
    double dailyEarnings = 0.0;
    double monthlyEarnings = 0.0;
    double yearlyEarnings = 0.0;

  @override
  void initState() {
    _dailyUsers = TextEditingController();
    _cpmValue = TextEditingController();
    _pageviewPerUser = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _dailyUsers.dispose();
    _cpmValue.dispose();
    _pageviewPerUser.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {

    calculate(){
      String success ="suss";
      double result = double.parse(_pageviewPerUser.text)* double.parse(_cpmValue.text)* double.parse(_dailyUsers.text)/1000;
      setState(() {
         dailyEarnings = result; 
         monthlyEarnings = dailyEarnings *30;
         yearlyEarnings = monthlyEarnings* 12;
      });
      return success;

    }
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 230, 225, 225),
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text("Admob Calculator", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
          child: Container(
             decoration:  BoxDecoration( color: Colors.white, borderRadius: BorderRadius.circular(23)),
              alignment: Alignment.center,
            
            width: 500,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
               Column(
                children: [
                   Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MyTextfield(controller: _dailyUsers, helperText: "Daily app visitors",),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MyTextfield(controller: _cpmValue, helperText: 'CPM',),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MyTextfield(controller: _pageviewPerUser, helperText: 'Average pageviews per user',),
                ),
                ElevatedButton(onPressed: (){              
                  calculate();
                
                }, child: const Text("Calculate")),
                ],
               ),
          
                Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text("\$ ${dailyEarnings.round().toString()}", style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w900),),
                        const Text("Daily", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                      ],
                    ),
                    spacer,
                    
                    Column(
                      children: [
                        Text("\$ ${monthlyEarnings.round().toString()}", style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w900),),
                        const Text("Monthly", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                      ],
                    ),
                    spacer,
          
                    Column(
                      children: [
                        Text("\$ ${yearlyEarnings.roundToDouble().toString()}", style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w900),),
                        const Text("Yearly", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                      ],
                    ),
                    
                  ],
                 ),
               )
                
              ],
            ),
          ),
        ),
      ),
    )
    ;
  }
}