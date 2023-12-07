import 'package:flutter/material.dart';

class MyTextfield extends StatefulWidget {
  const MyTextfield( {super.key, required this.controller, required this.helperText,  this.suffixIcon ,  this.num = '', } );

  final TextEditingController controller;
  final String helperText;
  final IconData? suffixIcon;
  final String num;

  @override
  State<MyTextfield> createState() => _MyTextfieldState();
}

class _MyTextfieldState extends State<MyTextfield> {
  

  @override
  Widget build(BuildContext context) {
    return  TextField(
      controller: widget.controller,
      decoration: InputDecoration(
        hintText: widget.helperText,
        suffixIcon: Icon(widget.suffixIcon),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20), borderSide: const BorderSide(width: 2, color: Colors.black))
      ),
    );
  }
}