import 'package:flutter/material.dart';
import 'package:nonsense/pages/help.dart';
import 'package:nonsense/pages/home.dart';
import 'package:nonsense/pages/settings.dart';

class MyRouter extends StatefulWidget {
  const MyRouter({super.key});

  @override
  State<MyRouter> createState() => _MyRouterState();
}

class _MyRouterState extends State<MyRouter> {
  int currentIndex = 0;

  List<Widget> pages = const [  HomepageView(),  HelpScreen(),SettingsView()];

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: Colors.white54,
      appBar: AppBar( backgroundColor: Colors.amber,
      title: const Text("CALCI", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, letterSpacing: 3.0),),),

      body: pages[currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.amberAccent,
        selectedItemColor: Colors.black,
        
        elevation: 2,
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
           currentIndex = value;
          });
        },
        items: const [
        BottomNavigationBarItem(icon: Icon( Icons.home),label: ""),
        BottomNavigationBarItem(icon: Icon( Icons.help),label: ""),
        BottomNavigationBarItem(icon: Icon( Icons.settings),label: ""),
      ]),
    );
  }
}