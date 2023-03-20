import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class Button extends StatelessWidget {
  static const OPERATION = Color.fromRGBO(250, 112, 112, 1);
  static const Dark = Color.fromRGBO(82, 82, 82, 1);
  static const DEFAULT = Color.fromRGBO(112, 112, 112, 1);

  final String text;
  final bool big;
  final Color color;
  final void Function(String) comand;

  // ignore: prefer_const_constructors_in_immutables, use_key_in_widget_constructors
  Button({
    required this.text,
    this.big = false,
    this.color = DEFAULT, 
    required this.comand,
  });
  Button.Operation({
    required this.text,
    this.big = false,
    this.color = OPERATION, 
    required this.comand,
  });
  Button.big({
    required this.text,
    this.big = true,
    this.color = DEFAULT, 
    required this.comand,
  });

 

  @override
  Widget build(BuildContext context) {
    return Expanded(
      
      flex: big ? 2 : 1,
      child: ElevatedButton(
        //color this.color,
        child: Text(
          text,
          // ignore: prefer_const_constructors
          style: TextStyle(
            // ignore: prefer_const_constructors
            color: Color.fromRGBO(218, 213, 209, 0.922),
            fontSize: 32,
            fontWeight: FontWeight.w300,
          ),
          // ignore: unnecessary_this
        ),
        onPressed: () => comand(text),
      ),
    );
  }
}
